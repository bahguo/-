/*
 * Copyright 2019
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

package com.goblok.anjing.fungsi.aktivitas;

//import android.app.ActionBar;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import android.app.Activity;
import androidx.appcompat.app.AppCompatActivity;
//import android.app.Fragment;
import androidx.fragment.app.Fragment;
//import android.app.FragmentManager;
import androidx.fragment.app.FragmentManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.Gravity;
import androidx.core.view.GravityCompat;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import androidx.drawerlayout.widget.DrawerLayout;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.Toast;
//import android.widget.Toolbar;
import androidx.appcompat.widget.Toolbar;

import bisa.gue.gp.R;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.zirco.ui.activities.preferences.PreferencesActivity;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import android.graphics.Canvas;
import android.widget.ImageButton;

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
public class MainActivity extends AppCompatActivity implements View.OnClickListener {
	private long exitTime = 0;

	private ActionBar mActionBar;
	private ActionBarDrawerToggle mDrawerToggle;
	private CharSequence mDrawerTitle;
    private CharSequence mTitle;
	private Context mContext;
	private DrawerLayout mDrawerLayout;
	private EditText textUrl;
	private ImageView webIcon, goBack, goForward, navSet, navStop, goHome, btnStart;
	private InputMethodManager manager;
	private Intent inten;
	private ListView mDrawerList;
	private ProgressBar progressBar;
	private String mPlanetDomain;
	private String mPlanetDocari;
	private String mPlanetDobodo;
	private String[] mPlanetTitles;
	private Toolbar mToolbar;
    private WebView webView;
    
    private static final String HTTP = "http://";
    private static final String HTTPS = "https://";
    private static final int PRESS_BACK_EXIT_GAP = 2000;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		setTheme(R.style.Theme_AppCompat_Light_NoActionBar);

        // 防止底部按钮上移
        getWindow().setSoftInputMode
                (WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN |
                        WindowManager.LayoutParams.SOFT_INPUT_ADJUST_PAN);

        setContentView(R.layout.activity_gue);
		//stackoverflow.com/questions/22192291/how-to-change-the-status-bar-color-in-android
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP){
			getWindow().setStatusBarColor(getResources().getColor(R.color.primary_material_light));
		}
		mToolbar = findViewById(R.id.toolbar);
		setSupportActionBar(mToolbar);
		LinearLayout.LayoutParams toolbarParams = new LinearLayout.LayoutParams(
			ViewGroup.LayoutParams.MATCH_PARENT,
			getResources().getDimensionPixelSize(R.dimen.top_bar_height)
		);
		mToolbar.setLayoutParams(toolbarParams);
		mActionBar = getSupportActionBar();

		mTitle = mDrawerTitle = getTitle();
        mPlanetTitles = getResources().getStringArray(R.array.planets_array);
        mDrawerLayout = (DrawerLayout) findViewById(R.id.drawer_layout);
        mDrawerList = (ListView) findViewById(R.id.left_drawer);

        // set a custom shadow that overlays the main content when the drawer opens
        //mDrawerLayout.setDrawerShadow(R.drawable.drawer_shadow, GravityCompat.START);
        // set up the drawer's list view with items and click listener
        mDrawerList.setAdapter(new ArrayAdapter<String>(this,
														R.layout.drawer_list_item, mPlanetTitles));
        mDrawerList.setOnItemClickListener(new DrawerItemClickListener());

        // enable ActionBar app icon to behave as action to toggle nav drawer
        mActionBar.setDisplayHomeAsUpEnabled(true);
        mActionBar.setHomeButtonEnabled(true);

        // ActionBarDrawerToggle ties together the the proper interactions
        // between the sliding drawer and the action bar app icon
		mDrawerToggle = new ActionBarDrawerToggle(
			this,                  /* host Activity */
			mDrawerLayout,         /* DrawerLayout object */
			mToolbar,  /* nav drawer image to replace 'Up' caret */
			R.string.app_name,  /* "open drawer" description for accessibility */
			R.string.app_name  /* "close drawer" description for accessibility */
		) {
            public void onDrawerClosed(View view) {
                mActionBar.setTitle(mTitle);
                invalidateOptionsMenu(); // creates call to onPrepareOptionsMenu()
            }

            public void onDrawerOpened(View drawerView) {
                mActionBar.setTitle(mDrawerTitle);
                invalidateOptionsMenu(); // creates call to onPrepareOptionsMenu()
            }
        };
		mDrawerToggle.setDrawerArrowDrawable(new HamburgerHotDog(this));
        mDrawerLayout.addDrawerListener(mDrawerToggle);
		/*mDrawerToggle.setDrawerIndicatorEnabled(false);
		mToolbar.setNavigationIcon(R.drawable.internet);
		mDrawerToggle.setToolbarNavigationClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view){
				mDrawerLayout.openDrawer(GravityCompat.START);
			}
		});
		mToolbar.setContentInsetsAbsolute(0,0);
		mToolbar.setContentInsetsRelative(0,0);*/
		mToolbar.setContentInsetStartWithNavigation(0);
		if (savedInstanceState == null) {
			mPlanetDomain = "bing";//getResources().getString(R.string.home_url);
			mPlanetDocari = "search?q=";
			mPlanetDobodo = "www";
		}

		/*View barMain = findViewById(R.id.custom_bar_main);
		mActionBar.setCustomView(barMain);*/
		//stackoverflow.com/questions/22046903/changing-the-android-overflow-menu-icon-programmatically/22106474#22106474
		//mToolbar.setOverflowIcon(getResources().getDrawable(R.drawable.abc_ic_menu_overflow_material));
		String aamod = getString(R.string.abc_action_menu_overflow_description);
		for (int i = 0; i < mToolbar.getChildCount(); i++) {
			if(mToolbar.getChildAt(i) instanceof ImageButton) {
				ImageButton imageButang = (ImageButton) mToolbar.getChildAt(i);
				//imageButang.setPadding(0, imageButang.getPaddingTop(), 0, imageButang.getPaddingBottom());
				ViewGroup.LayoutParams berandaTogel = imageButang.getLayoutParams();
				//Toast.makeText(this,""+imageButang.getId(),Toast.LENGTH_SHORT).show();
				berandaTogel.width = getResources().getDimensionPixelSize(R.dimen.top_bar_height);
				imageButang.setLayoutParams(berandaTogel);
			}
		}

        mContext = MainActivity.this;
        manager = (InputMethodManager) getSystemService(INPUT_METHOD_SERVICE);

        // 绑定控件
        initView();

        // 初始化 WebView
        initWeb();
    }
	//stackoverflow.com/questions/23896617/is-possible-to-increase-the-size-of-actionbardrawertoggle-drawer-menu
	//stackoverflow.com/questions/27028571/how-to-replace-the-hamburger-icon-used-for-actionbartoggle-on-android-toolbar-wi/40774724#40774724
	public class HamburgerHotDog extends DrawerArrowDrawable{

		public HamburgerHotDog(Context context){
			super(context);
			//setColor(context.getResources().getColor(android.R.color.white));
		}

		@Override
		public void draw(Canvas canvas){
			super.draw(canvas);

			//setBarLength(15.0f);
			//setBarThickness(5.0f);
			//setGapSize(5.0f);

		}
	}
	/*private static void setOverflowButtonColor(final AppCompatActivity activity, final PorterDuffColorFilter colorFilter) {
	 final String overflowDescription = activity.getString(R.string.abc_action_menu_overflow_description);
	 final ViewGroup decorView = (ViewGroup) activity.getWindow().getDecorView();
	 final ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
	 viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
	 @Override
	 public void onGlobalLayout() {
	 final ArrayList<View> outViews = new ArrayList<>();
	 decorView.findViewsWithText(outViews, overflowDescription,
	 View.FIND_VIEWS_WITH_CONTENT_DESCRIPTION);
	 if (outViews.isEmpty()) {
	 return;
	 }
	 ActionMenuItemView overflow = (ActionMenuItemView)outViews.get(0);
	 overflow.getCompoundDrawables()[0].setColorFilter(colorFilter);
	 removeOnGlobalLayoutListener(decorView,this);
	 }
	 });
	 }*/

	@Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.main, menu);
        return super.onCreateOptionsMenu(menu);
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
				/*case R.id.action_websearch:
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
				 return true;*/
			case R.id.action_settings:
				inten = new Intent(this, PreferencesActivity.class);
				startActivity(inten);
				return true;
			case R.id.action_exit:
				finish();
				return true;
			case android.R.id.home:
				Toast.makeText(this,"Beranda",Toast.LENGTH_SHORT).show();
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

	private void selectItem(int position) {
        // update the main content by replacing fragments
        Fragment fragment = new PlanetFragment();
        Bundle args = new Bundle();
        args.putInt(PlanetFragment.ARG_PLANET_NUMBER, position);
        fragment.setArguments(args);

        FragmentManager fragmentManager = getSupportFragmentManager();
        fragmentManager.beginTransaction().replace(R.id.right_drawer, fragment).commit();

        // update selected item and title, then close the drawer
        mDrawerList.setItemChecked(position, true);
        setTitle(mPlanetTitles[position]);
        mDrawerLayout.closeDrawer(mDrawerList);
		mPlanetDomain = getResources().getStringArray(R.array.planets_array)[position];
		switch(position){
			case 0:
				mPlanetDobodo = "www";
				mPlanetDocari = "web?q=";
				break;
			case 1:
				mPlanetDobodo = "www";
				mPlanetDocari = "s?wd=";
				break;
			case 3:
				mPlanetDobodo = "www";
				mPlanetDocari = "?q=";
				break;
			case 5:
				mPlanetDobodo = "search";
				mPlanetDocari = mPlanetDobodo+".naver?query=";
				break;
			case 6:
				mPlanetDobodo = "search";
				mPlanetDocari = mPlanetDobodo+"?p=";
				break;
			case 7:
				mPlanetDobodo = "www";
				mPlanetDocari = "search?text=";
				break;
			default:
				mPlanetDobodo = "www";
				mPlanetDocari = "search?q=";
		}
		webView.loadUrl("https://"+mPlanetDobodo+"."+mPlanetDomain+".com");
    }

    @Override
    public void setTitle(CharSequence title) {
        mTitle = title;
        mActionBar.setTitle(mTitle);
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
     * Fragment that appears in the "content_frame", shows a planet
     */
    public static class PlanetFragment extends Fragment {
        public static final String ARG_PLANET_NUMBER = "planet_number";

        public PlanetFragment() {
            // Empty constructor required for fragment subclasses
        }

        @Override
        public View onCreateView(LayoutInflater inflater, ViewGroup container,
								 Bundle savedInstanceState) {
            View rootView = inflater.inflate(R.layout.fragment_planet, container, false);
            int i = getArguments().getInt(ARG_PLANET_NUMBER);
            String planet = getResources().getStringArray(R.array.planets_array)[i];

            int imageId = getResources().getIdentifier(planet.toLowerCase(Locale.getDefault()),
													   "drawable", getActivity().getPackageName());
            ((ImageView) rootView.findViewById(R.id.image)).setImageResource(imageId);
            getActivity().setTitle(planet);
            return rootView;
        }
	}

    /**
     * 绑定控件
     */
    private void initView() {
        webView = findViewById(R.id.webView);
        progressBar = findViewById(R.id.progressBar);
        textUrl = findViewById(R.id.textUrl);
        webIcon = findViewById(R.id.webIcon);
        btnStart = findViewById(R.id.btnStart);
        goBack = findViewById(R.id.goBack);
        goForward = findViewById(R.id.goForward);
        navSet = findViewById(R.id.navSet);
		navStop = findViewById(R.id.navStop);
        goHome = findViewById(R.id.goHome);

        // 绑定按钮点击事件
        btnStart.setOnClickListener(this);
        goBack.setOnClickListener(this);
        goForward.setOnClickListener(this);
        navSet.setOnClickListener(this);
		navStop.setOnClickListener(this);
        goHome.setOnClickListener(this);

        // 地址输入栏获取与失去焦点处理
        textUrl.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View view, boolean hasFocus) {
                if (hasFocus) {
                    // 显示当前网址链接 TODO:搜索页面显示搜索词
                    textUrl.setText(webView.getUrl());
                    // 光标置于末尾
                    textUrl.setSelection(textUrl.getText().length());
                    // 显示因特网图标
                    webIcon.setImageResource(R.drawable.internet);
                    // 显示跳转按钮
                    btnStart.setImageResource(R.drawable.go);
                } else {
                    // 显示网站名
                    textUrl.setText(webView.getTitle());
                    // 显示网站图标
                    webIcon.setImageBitmap(webView.getFavicon());
                    // 显示刷新按钮
                    btnStart.setImageResource(R.drawable.refresh);
                }
            }
        });

        // 监听键盘回车搜索
        textUrl.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View view, int keyCode, KeyEvent keyEvent) {
                if (keyCode == KeyEvent.KEYCODE_ENTER && keyEvent.getAction() == KeyEvent.ACTION_DOWN) {
                    // 执行搜索
                    btnStart.callOnClick();
                    textUrl.clearFocus();
                }
                return false;
            }
        });
		webIcon.setOnClickListener(new View.OnClickListener() /*onToolbarNavigationClickListener*/ {
				@Override
				public void onClick(View view){

					mDrawerLayout.openDrawer(GravityCompat.START);
				}
			});
    }


    /**
     * 初始化 web
     */
    @SuppressLint("SetJavaScriptEnabled")
    private void initWeb() {
        // 重写 WebViewClient
        webView.setWebViewClient(new MkWebViewClient());
        // 重写 WebChromeClient
        webView.setWebChromeClient(new MkWebChromeClient());

        WebSettings settings = webView.getSettings();
        // 启用 js 功能
        settings.setJavaScriptEnabled(true);
        // 设置浏览器 UserAgent
        settings.setUserAgentString(settings.getUserAgentString() + " mkBrowser/" + getVerName(mContext));

        // 将图片调整到适合 WebView 的大小
        settings.setUseWideViewPort(true);
        // 缩放至屏幕的大小
        settings.setLoadWithOverviewMode(true);

        // 支持缩放，默认为true。是下面那个的前提。
        settings.setSupportZoom(true);
        // 设置内置的缩放控件。若为false，则该 WebView 不可缩放
        settings.setBuiltInZoomControls(true);
        // 隐藏原生的缩放控件
        settings.setDisplayZoomControls(false);

        // 缓存
        settings.setCacheMode(WebSettings.LOAD_DEFAULT);
        // 设置可以访问文件
        settings.setAllowFileAccess(true);
        // 支持通过JS打开新窗口
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        // 支持自动加载图片
        settings.setLoadsImagesAutomatically(true);
        // 设置默认编码格式
        settings.setDefaultTextEncodingName("utf-8");
        // 本地存储
        settings.setDomStorageEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);

        // 资源混合模式
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            settings.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        }

        // 加载首页
        //webView.loadUrl(getResources().getString(R.string.home_url));
		webView.loadUrl("https://"+mPlanetDobodo+"."+mPlanetDomain+".com");
    }


    /**
     * 重写 WebViewClient
     */
    private class MkWebViewClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            // 设置在webView点击打开的新网页在当前界面显示,而不跳转到新的浏览器中

            if (url == null) {
                // 返回true自己处理，返回false不处理
                return true;
            }

            // 正常的内容，打开
            if (url.startsWith(HTTP) || url.startsWith(HTTPS)) {
                view.loadUrl(url);
                return true;
            }

            // 调用第三方应用，防止crash (如果手机上没有安装处理某个scheme开头的url的APP, 会导致crash)
            try {
                // TODO:弹窗提示用户，允许后再调用
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                startActivity(intent);
                return true;
            } catch (Exception e) {
                return true;
            }
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
            // 网页开始加载，显示进度条
            progressBar.setProgress(0);
            progressBar.setVisibility(View.VISIBLE);

            // 更新状态文字
            textUrl.setText("Memuat...");

            // 切换默认网页图标
            webIcon.setImageResource(R.drawable.internet);
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            // 网页加载完毕，隐藏进度条
            progressBar.setVisibility(View.INVISIBLE);

            // 改变标题
            setTitle(webView.getTitle());
            // 显示页面标题
            textUrl.setText(webView.getTitle());
        }
    }


    /**
     * 重写 WebChromeClient
     */
    private class MkWebChromeClient extends WebChromeClient {
        private final static int WEB_PROGRESS_MAX = 100;

        @Override
        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);

            // 加载进度变动，刷新进度条
            progressBar.setProgress(newProgress);
            if (newProgress > 0) {
                if (newProgress == WEB_PROGRESS_MAX) {
                    progressBar.setVisibility(View.INVISIBLE);
                } else {
                    progressBar.setVisibility(View.VISIBLE);
                }
            }
        }

        @Override
        public void onReceivedIcon(WebView view, Bitmap icon) {
            super.onReceivedIcon(view, icon);

            // 改变图标
            webIcon.setImageBitmap(icon);
        }

        @Override
        public void onReceivedTitle(WebView view, String title) {
            super.onReceivedTitle(view, title);

            // 改变标题
            setTitle(title);
            // 显示页面标题
            textUrl.setText(title);
        }
    }

    /**
     * 返回按钮处理
     */
    @Override
    public void onBackPressed() {
        // 能够返回则返回上一页
        if (webView.canGoBack()) {
            webView.goBack();
        } else {
            if ((System.currentTimeMillis() - exitTime) > PRESS_BACK_EXIT_GAP) {
                // 连点两次退出程序
                Toast.makeText(mContext, "Tekan sekali lagi untuk keluar",
                        Toast.LENGTH_SHORT).show();
                exitTime = System.currentTimeMillis();
            } else {
                super.onBackPressed();
            }

        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            // 跳转 或 刷新
            case R.id.btnStart:
                if (textUrl.hasFocus()) {
                    // 隐藏软键盘
                    if (manager.isActive()) {
                        manager.hideSoftInputFromWindow(textUrl.getApplicationWindowToken(), 0);
                    }

                    // 地址栏有焦点，是跳转
                    String input = textUrl.getText().toString();
                    if (!isHttpUrl(input) || input.startsWith(HTTP) || input.startsWith(HTTPS) || input.endsWith(".")) {
                        // 不是网址，加载搜索引擎处理
						String sh = "";
						try {
							// URL 编码
							sh = URLEncoder.encode(input, "utf-8");
						} catch (UnsupportedEncodingException e) {
							e.printStackTrace();
						}
						sh = "https://"+mPlanetDobodo+"." + mPlanetDomain + ".com/" + mPlanetDocari + sh;//&ie=UTF-8;
						if (!input.startsWith(HTTP) && !input.startsWith(HTTPS)) {
							if(input.contains(".") && !input.startsWith(".") /*&& !input.startsWith(HTTP) && !input.startsWith(HTTPS)*/){
								String[] si = input.split("\\.");
								if(!input.contains(" ") && !input.endsWith(".") && !si[1].equals("") /*&& !input.startsWith(HTTP) && !input.startsWith(HTTPS)*/){
									Toast.makeText(mContext, "tong: "+input, Toast.LENGTH_SHORT).show();
									input = HTTP+input;
								}else{
									Toast.makeText(mContext, "kata: "+si[1], Toast.LENGTH_SHORT).show();
									input = sh+"";
								}
							}else{
								Toast.makeText(mContext, "nodot: "+input, Toast.LENGTH_SHORT).show();
								input = sh+"";
							}
						}else{
							Toast.makeText(mContext, "lain: "+input, Toast.LENGTH_SHORT).show();
							input = input+"";
						}
                    }else{
						Toast.makeText(mContext, "liar: "+input, Toast.LENGTH_SHORT).show();
						input = HTTP+input;
					}
                    webView.loadUrl(input);

                    // 取消掉地址栏的焦点
                    textUrl.clearFocus();
                } else {
                    // 地址栏没焦点，是刷新
                    webView.reload();
                }
                break;

            // 后退
            case R.id.goBack:
                webView.goBack();
                break;

            // 前进
            case R.id.goForward:
                webView.goForward();
                break;

            // 设置
            case R.id.navSet:
				webView.reload();
                Toast.makeText(mContext, "Menyegarkan", Toast.LENGTH_SHORT).show();
                break;

			case R.id.navStop:
				Toast.makeText(mContext, "Menghentikan", Toast.LENGTH_SHORT).show();
				webView.stopLoading();
				break;

            // 主页
            case R.id.goHome:
                //webView.loadUrl(getResources().getString(R.string.home_url));
				webView.loadUrl("https://"+mPlanetDobodo+"."+mPlanetDomain+".com");
                break;

            default:
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        try {
            webView.getClass().getMethod("onPause").invoke(webView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        try {
            webView.getClass().getMethod("onResume").invoke(webView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 判断字符串是否为URL（https://blog.csdn.net/bronna/article/details/77529145）
     *
     * @param urls 要勘定的字符串
     * @return true:是URL、false:不是URL
     */
    public static boolean isHttpUrl(String urls) {
        boolean isUrl;
        // 判断是否是网址的正则表达式
        String regex = "(((https|http)?://)?([a-z0-9]+[.])|(www.))"
                + "\\w+[.|\\/]([a-z0-9]{0,})?[[.]([a-z0-9]{0,})]+((/[\\S&&[^,;\u4E00-\u9FA5]]+)+)?([.][a-z0-9]{0,}+|/?)";

        Pattern pat = Pattern.compile(regex.trim());
        Matcher mat = pat.matcher(urls.trim());
        isUrl = mat.matches();
        return isUrl;
    }

    /**
     * 获取版本号名称
     *
     * @param context 上下文
     * @return 当前版本名称
     */
    private static String getVerName(Context context) {
        String verName = "unKnow";
        try {
            verName = context.getPackageManager().
                    getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return verName;
    }
}
