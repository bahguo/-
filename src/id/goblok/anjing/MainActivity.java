/*
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package id.goblok.anjing;

//import android.app.Activity;
//import android.app.Fragment;
//import android.app.FragmentManager;
import android.app.SearchManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Build.VERSION;

import android.support.v4.app.ActionBarDrawerToggle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
//import android.support.v7.app.AppCompatActivity;

import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
//import android.webkit.WebChromeClient;
//import android.webkit.WebView;
//import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;

import android.widget.Button;
//import android.widget.EditText;
//import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
//import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.example.android.tabcompat.lib.CompatTab;
import com.example.android.tabcompat.lib.CompatTabListener;
import com.example.android.tabcompat.lib.TabCompatActivity;
import com.example.android.tabcompat.lib.TabHelper;

import bisa.gue.R;
import id.goblok.anjing.PlanetFragment;
import java.util.Locale;
import android.widget.Toolbar;
import org.zirco.ui.activities.preferences.PreferencesActivity;

/**
 * This example illustrates a common usage of the DrawerLayout widget
 * in the Android support library.
 * <p/>
 * <p>When a navigation (left) drawer is present, the host activity should detect presses of
 * the action bar's Up affordance as a signal to open and close the navigation drawer. The
 * ActionBarDrawerToggle facilitates this behavior.
 * Items within the drawer should fall into one of two categories:</p>
 * <p/>
 * <ul>
 * <li><strong>View switches</strong>. A view switch follows the same basic policies as
 * list or tab navigation in that a view switch does not create navigation history.
 * This pattern should only be used at the root activity of a task, leaving some form
 * of Up navigation active for activities further down the navigation hierarchy.</li>
 * <li><strong>Selective Up</strong>. The drawer allows the user to choose an alternate
 * parent for Up navigation. This allows a user to jump across an app's navigation
 * hierarchy at will. The application should treat this as it treats Up navigation from
 * a different task, replacing the current task stack using TaskStackBuilder or similar.
 * This is the only form of navigation drawer that should be used outside of the root
 * activity of a task.</li>
 * </ul>
 * <p/>
 * <p>Right side drawers should be used for actions, not navigation. This follows the pattern
 * established by the Action Bar that navigation should be to the left and actions to the right.
 * An action should be an operation performed on the current contents of the window,
 * for example enabling or disabling a data overlay on top of the current content.</p>
 */
public class MainActivity extends TabCompatActivity {
    private DrawerLayout mDrawerLayout;
    private ListView mDrawerList;
    private ActionBarDrawerToggle mDrawerToggle;

    private CharSequence mDrawerTitle;
    private CharSequence mTitle;
    private String[] mPlanetTitles;
	private Intent inten;
	//final static String ARG_POSISI = "position";
    int mCurrentPosisi = -1;
	TabHelper mTabHelper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        mTitle = mDrawerTitle = getTitle();
        mPlanetTitles = getResources().getStringArray(R.array.planets_array);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        mDrawerList = (ListView) findViewById(R.id.left_drawer);

        // set a custom shadow that overlays the main content when the drawer opens
        mDrawerLayout.setDrawerShadow(R.drawable.drawer_shadow, GravityCompat.START);
        // set up the drawer's list view with items and click listener
        mDrawerList.setAdapter(new ArrayAdapter<String>(this,
														R.layout.drawer_list_item, mPlanetTitles));
        mDrawerList.setOnItemClickListener(new DrawerItemClickListener());

        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
		
		// enable ActionBar app icon to behave as action to toggle nav drawer
        getActionBar().setDisplayHomeAsUpEnabled(true);
        getActionBar().setHomeButtonEnabled(true);

        // ActionBarDrawerToggle ties together the the proper interactions
        // between the sliding drawer and the action bar app icon
        mDrawerToggle = new ActionBarDrawerToggle(
			this,                  /* host Activity */
			mDrawerLayout,         /* DrawerLayout object */
			R.drawable.ic_drawer,  /* nav drawer image to replace 'Up' caret */
			R.string.drawer_open,  /* "open drawer" description for accessibility */
			R.string.drawer_close  /* "close drawer" description for accessibility */
		) {
            public void onDrawerClosed(View view) {
                getActionBar().setTitle(mTitle);
                invalidateOptionsMenu(); // creates call to onPrepareOptionsMenu()
            }

            public void onDrawerOpened(View drawerView) {
                getActionBar().setTitle(mDrawerTitle);
                invalidateOptionsMenu(); // creates call to onPrepareOptionsMenu()
            }
        };
        mDrawerLayout.setDrawerListener(mDrawerToggle);

        if (savedInstanceState != null & mCurrentPosisi >= 0) {
			mCurrentPosisi = savedInstanceState.getInt(PlanetFragment.ARG_PLANET_NUMBER);
			selectItem(mCurrentPosisi);
        }
		//Toast.makeText(this, "ada di "+mCurrentPosisi, Toast.LENGTH_SHORT).show();
		toolbar.setBackgroundColor(android.R.color.background_light);
		
		//setActionBar(toolbar);
		if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(getColor(R.id.toolbar));
        }
		
		TabHelper tabHelper = getTabHelper();
		//mTabHelper = TabHelper.createInstance(this);
		//mTabHelper.setUp();

        CompatTab photosTab = tabHelper.newTab("photos")
			.setText(R.string.tab_photos)
			.setIcon(R.drawable.ic_tab_photos)
			.setTabListener(new InstantiatingTabListener(this, PhotosFragment.class));
        tabHelper.addTab(photosTab);

        CompatTab videosTab = tabHelper.newTab("videos")
			.setText(R.string.tab_videos)
			.setIcon(R.drawable.ic_tab_videos)
			.setTabListener(new InstantiatingTabListener(this, VideosFragment.class));
        tabHelper.addTab(videosTab);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.main, menu);
        return super.onCreateOptionsMenu(menu);
    }

    /* Called whenever we call invalidateOptionsMenu() */
    @Override
    public boolean onPrepareOptionsMenu(Menu menu) {
        // If the nav drawer is open, hide action items related to the content view
        boolean drawerOpen = mDrawerLayout.isDrawerOpen(mDrawerList);
        menu.findItem(R.id.action_websearch).setVisible(!drawerOpen);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
		// The action bar home/up action should open or close the drawer.
		// ActionBarDrawerToggle will take care of this.
        if (mDrawerToggle.onOptionsItemSelected(item)) {
            return true;
        }
        // Handle action buttons
        switch(item.getItemId()) {
			case R.id.action_websearch:
				// create intent to perform web search for this planet
				inten = new Intent(Intent.ACTION_WEB_SEARCH);
				inten.putExtra(SearchManager.QUERY, getActionBar().getTitle());
				// catch event that there's no activity to handle intent
				if (inten.resolveActivity(getPackageManager()) != null) {
					//startActivity(intent);
					selectItem(4);
				} else {
					Toast.makeText(this, R.string.app_not_available, Toast.LENGTH_LONG).show();
				}
				return true;
			case R.id.action_about:
				inten = new Intent(this, TentangAktivity.class);
				startActivity(inten);
				return true;
			case R.id.action_settings:
				inten = new Intent(this, PreferencesActivity.class);
				startActivity(inten);
				return true;
			case R.id.action_exit:
				finish();
				return true;
			default:
				return super.onOptionsItemSelected(item);
        }
    }

    /* The click listner for ListView in the navigation drawer */
    private class DrawerItemClickListener implements ListView.OnItemClickListener {
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            selectItem(position);
        }
    }
	/** Called when the user clicks the Send button */
	public void kirimTentang(/*View view*/) {
		// Do something in response to button
		Intent intent = new Intent(this, TentangAktivity.class);
		startActivity(intent);
	}

    private void selectItem(int position) {
        // update the main content by replacing fragments
        Fragment fragment = new PlanetFragment();
        Bundle args = new Bundle();
        args.putInt(PlanetFragment.ARG_PLANET_NUMBER, position);
		mCurrentPosisi=position;
        fragment.setArguments(args);

        FragmentManager fragmentManager = getSupportFragmentManager();
        fragmentManager.beginTransaction().replace(android.R.id.tabcontent, fragment).commit();

        // update selected item and title, then close the drawer
        mDrawerList.setItemChecked(position, true);
        setTitle(mPlanetTitles[position]);
        mDrawerLayout.closeDrawer(mDrawerList);
		//getActionBar().hide();
    }

    @Override
    public void setTitle(CharSequence title) {
        mTitle = title;
        getActionBar().setTitle(mTitle);
    }

    /**
     * When using the ActionBarDrawerToggle, you must call it during
     * onPostCreate() and onConfigurationChanged()...
     */

    @Override
    protected void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        // Sync the toggle state after onRestoreInstanceState has occurred.
        mDrawerToggle.syncState();
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        // Pass any configuration change to the drawer toggls
        mDrawerToggle.onConfigurationChanged(newConfig);
    }


	/**
     * Implementation of {@link CompatTabListener} to handle tab change events. This implementation
     * instantiates the specified fragment class with no arguments when its tab is selected.
     */
    public static class InstantiatingTabListener implements CompatTabListener {

        private final TabCompatActivity mActivity;
        private final Class mClass;

        /**
         * Constructor used each time a new tab is created.
         *
         * @param activity The host Activity, used to instantiate the fragment
         * @param cls      The class representing the fragment to instantiate
         */
        public InstantiatingTabListener(TabCompatActivity activity, Class<? extends Fragment> cls) {
            mActivity = activity;
            mClass = cls;
        }

        /* The following are each of the ActionBar.TabListener callbacks */
        @Override
        public void onTabSelected(CompatTab tab, FragmentTransaction ft) {
            // Check if the fragment is already initialized
            Fragment fragment = tab.getFragment();
            if (fragment == null) {
                // If not, instantiate and add it to the activity
                fragment = Fragment.instantiate(mActivity, mClass.getName());
                tab.setFragment(fragment);
                ft.add(android.R.id.tabcontent, fragment, tab.getTag());
            } else {
                // If it exists, simply attach it in order to show it
                ft.attach(fragment);
            }
			//FragmentManager fragmentManager = getSupportFragmentManager();
			//ft.replace(android.R.id.tabcontent, fragment);
        }

        @Override
        public void onTabUnselected(CompatTab tab, FragmentTransaction ft) {
            Fragment fragment = tab.getFragment();
            if (fragment != null) {
                // Detach the fragment, because another one is being attached
                ft.detach(fragment);
            }
        }

        @Override
        public void onTabReselected(CompatTab tab, FragmentTransaction ft) {
            // User selected the already selected tab. Do nothing.
        }
    }

    public static class PhotosFragment extends Fragment {

        @Override
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
								 Bundle savedInstanceState) {
            TextView textView = new TextView(getActivity());
            textView.setGravity(Gravity.CENTER);
            textView.setText(R.string.tab_photos);
            return textView;
        }
    }

    public static class VideosFragment extends Fragment {

        @Override
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
								 Bundle savedInstanceState) {
            TextView textView = new TextView(getActivity());
            textView.setGravity(Gravity.CENTER);
            textView.setText(R.string.tab_videos);
            return textView;
        }
    }
	@Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);

        // Save the current article selection in case we need to recreate the fragment
        outState.putInt(PlanetFragment.ARG_PLANET_NUMBER, mCurrentPosisi);
    }
}
