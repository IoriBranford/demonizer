package com.github.ioribranford.demonizer;
import org.love2d.android.GameActivity;

public class DemonizerActivity extends GameActivity {
	@Override
	protected String[] getLibraries() {
		String[] base = super.getLibraries();
		final String[] mine = { "gme" };
		String[] libs = new String[base.length + mine.length];

		System.arraycopy(base, 0, libs, 0, base.length);
		System.arraycopy(mine, 0, libs, base.length, mine.length);

		return libs;
	}
}
