package ${packageName};

import android.os.Bundle;

import ${applicationPackage}.R;
import ${applicationPackage}.features.base.BaseActivity;
import ${applicationPackage}.injection.component.ActivityComponent;
import javax.inject.Inject;

public class ${activityClass} extends BaseActivity <#if generateView>implements ${viewName}</#if>{
<#if generatePresenter>
    @Inject
    public ${presenterName} presenter;
</#if>
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

<#if generateLayout>
    @Override
    public int getLayout() {
        return R.layout.${layoutName};
    }
</#if>

    @Override
    protected void inject(ActivityComponent activityComponent) {
        activityComponent.inject(this);
    }
    
<#if generatePresenter>
    @Override
    protected void attachView() {
        presenter.attachView(this);
    }

    @Override
    protected void detachPresenter() {
        presenter.detachView();
    }
</#if>
}