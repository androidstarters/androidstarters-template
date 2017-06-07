package ${packageName}.features.main;

import java.util.List;

import ${packageName}.features.base.MvpView;

public interface MainMvpView extends MvpView {

    void showPokemon(List<String> pokemon);

    void showProgress(boolean show);

    void showError();

}