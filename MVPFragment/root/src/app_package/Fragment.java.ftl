package ${packageName};

import android.os.Bundle;

import ${applicationPackage}.R;
import ${applicationPackage}.features.base.BaseFragment;
import ${applicationPackage}.injection.component.FragmentComponent;
import javax.inject.Inject;

public class ${className} extends BaseFragment <#if generateView>implements ${viewName}</#if>{

<#if generatePresenter>
    @Inject
    public ${presenterName} presenter;
</#if>

    public static ${className} newInstance() {
        return new ${className}();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }


<#if generatePresenter>
    @Override 
    public void onDestroyView() {
        presenter.detachView();
        super.onDestroyView();
    }
</#if>

<#if includeLayout>
    @Override
    public int getLayout() {
        return R.layout.${fragmentName};
    }
</#if>

    @Override
    protected void inject(FragmentComponent fragmentComponent) {
        fragmentComponent.inject(this);
    }

    @Override
    protected void attachView() {
        presenter.attachView(this);
    }

    @Override
    protected void detachPresenter() {
        presenter.detachView();
    }

}