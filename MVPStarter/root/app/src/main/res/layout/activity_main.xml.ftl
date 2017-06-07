<?xml version="1.0" encoding="utf-8"?>
<android.support.design.widget.CoordinatorLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <android.support.design.widget.AppBarLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

        <android.support.v7.widget.Toolbar
            android:id="@+id/toolbar"
            android:layout_width="match_parent"
            android:layout_height="?attr/actionBarSize"
            app:layout_scrollFlags="scroll|enterAlways"
            app:theme="@style/AppTheme.ToolbarStyle" />

    </android.support.design.widget.AppBarLayout>

    <android.support.v4.widget.SwipeRefreshLayout
        android:id="@+id/swipe_to_refresh"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        app:layout_behavior="@string/appbar_scrolling_view_behavior">

        <android.support.v7.widget.RecyclerView
            android:id="@+id/recycler_pokemon"
            android:layout_width="match_parent"
            android:layout_height="match_parent" />

    </android.support.v4.widget.SwipeRefreshLayout>

    <${packageName}.features.common.ErrorView
        android:id="@+id/view_error"
        android:layout_width="wrap_content"
        android:layout_height="match_parent"
        android:visibility="gone" />

    <ProgressBar
        android:id="@+id/progress"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:paddingBottom="?attr/actionBarSize"
        android:visibility="gone" />

</android.support.design.widget.CoordinatorLayout>