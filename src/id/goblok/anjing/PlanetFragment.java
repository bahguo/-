package id.goblok.anjing;

import android.content.Context;
import android.graphics.Color;
import android.support.v4.app.Fragment;
//import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;

import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import bisa.gue.R;
import id.goblok.anjing.MyWebViewClient;
import id.goblok.anjing.NetworkState;
import java.io.IOException;
/**
 * Fragment that appears in the "content_frame", shows a planet
 */
public class PlanetFragment extends Fragment {
	WebView webView;
	EditText editText;
	ProgressBar progressBar;
	ImageButton back, forward, stop, refresh, homeButton, goButton;
	//Button goButton;
	String planet;
	public static final String ARG_PLANET_NUMBER = "planet_number";
	int mCurrentPosisi = -1;

	public PlanetFragment() {
		// Empty constructor required for fragment subclasses
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
							 Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_webview, container, false);
		mCurrentPosisi = getArguments().getInt(ARG_PLANET_NUMBER);
		planet = getResources().getStringArray(R.array.planets_array)[mCurrentPosisi];

		/*int imageId = getResources().getIdentifier(planet.toLowerCase(Locale.getDefault()),
		 "drawable", getActivity().getPackageName());
		 ((ImageView) rootView.findViewById(R.id.image)).setImageResource(imageId);*/
		editText = rootView.findViewById(R.id.web_address_edit_text);
		webView = rootView.findViewById(R.id.webview);
		webView.loadUrl("https://www."+planet+".com");
		editText.setText(webView.getUrl());
		getActivity().setTitle(planet);
		if (savedInstanceState != null) {
			mCurrentPosisi = savedInstanceState.getInt(ARG_PLANET_NUMBER);
        }
		//Toast.makeText(rootView.getContext(), "ada di web "+mCurrentPosisi, Toast.LENGTH_SHORT).show();
		getActivity().getActionBar().hide();
		return rootView;
	}
	
	@Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
		editText = view.findViewById(R.id.web_address_edit_text);
		back = view.findViewById(R.id.back_arrow);
		forward = view.findViewById(R.id.forward_arrow);
		stop = view.findViewById(R.id.stop);
		goButton = view.findViewById(R.id.go_button);
		refresh = view.findViewById(R.id.refresh);
		homeButton = view.findViewById(R.id.home);

		progressBar = view.findViewById(R.id.progress_bar);
		progressBar.setMax(100);
		progressBar.setVisibility(View.VISIBLE);


		webView = view.findViewById(R.id.webview);
		if (savedInstanceState != null) {
			webView.restoreState(savedInstanceState);
		} else {
			webView.getSettings().setJavaScriptEnabled(true);
			webView.getSettings().setUseWideViewPort(true);
			webView.getSettings().setLoadWithOverviewMode(true);
			webView.getSettings().setSupportZoom(true);
			webView.getSettings().setSupportMultipleWindows(true);
			webView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
			webView.setBackgroundColor(Color.WHITE);

			webView.setWebChromeClient(new WebChromeClient() {
					@Override
					public void onProgressChanged(WebView view, int newProgress) {
						super.onProgressChanged(view, newProgress);
						progressBar.setProgress(newProgress);
						if (newProgress < 100 && progressBar.getVisibility() == ProgressBar.GONE) {
							progressBar.setVisibility(ProgressBar.VISIBLE);
						}
						if (newProgress == 100) {
							progressBar.setVisibility(ProgressBar.INVISIBLE);
						}else{
							progressBar.setVisibility(ProgressBar.VISIBLE);
						}
					}
				});
		}

		webView.setWebViewClient(new MyWebViewClient());
		goButton.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {

					/*try {
						if(!NetworkState.connectionAvailable(getContext())){
							Toast.makeText(getContext(), R.string.check_connection, Toast.LENGTH_SHORT).show();
						}else {*/

							InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
							inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
							if(editText.getText().toString().contains("http")){
								webView.loadUrl(editText.getText().toString());
							}else{
								webView.loadUrl("http://"+editText.getText().toString());
							}
							
					editText.setText(webView.getUrl());
						/*}

					}catch (Exception e) {
						e.printStackTrace();
					}*/

				}
			});

		back.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					if (webView.canGoBack()) {
						webView.goBack();
					}
				}
			});
		forward.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					if (webView.canGoForward()) {
						webView.goForward();
					}
				}
			});

		stop.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					webView.stopLoading();
				}
			});

		refresh.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					webView.reload();
				}
			});
		homeButton.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					webView.loadUrl("https://www."+planet+".com");
					editText.setText(webView.getUrl());
				}
			});
	}

	@Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);

        // Save the current article selection in case we need to recreate the fragment
        webView.saveState(outState);
		outState.putInt(ARG_PLANET_NUMBER, mCurrentPosisi);
    }
}
