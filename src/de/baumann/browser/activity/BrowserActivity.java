package de.baumann.browser.activity;

import android.app.Activity;
import android.os.Bundle;
import bisa.gue.R;

public class BrowserActivity extends Activity
{
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.baumann_activity_main);
	}
}
