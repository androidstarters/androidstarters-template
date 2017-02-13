package ${packageName};

import android.os.Bundle;

import ${applicationPackage}.R;
import ${applicationPackage}.ui.base.BaseActivity;
import javax.inject.Inject;
import butterknife.ButterKnife;

public class ${activityClass} extends BaseActivity <#if generateView>implements ${viewName}</#if>{
<#if generatePresenter>
    @Inject
    public ${presenterName} presenter;
</#if>
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        activityComponent().inject(this);
        ButterKnife.bind(this);
<#if generatePresenter>
    presenter.attachView(this);
</#if>
    }

<#if generateLayout>
@Override
public int getLayout() {
    return R.layout.${layoutName};
}
</#if>

<#if generatePresenter>
    @Override
    protected void onDestroy() {
        presenter.detachView();
        super.onDestroy();
    }
</#if>
}