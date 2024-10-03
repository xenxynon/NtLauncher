.class public final Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nothing/launcher/allapps/search/g;
.implements Landroid/view/View$OnTouchListener;
.implements Ls3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/android/launcher3/allapps/SearchUiManager;",
        "Lcom/android/launcher3/search/SearchCallback<",
        "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
        ">;",
        "Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;",
        "Lcom/android/launcher3/Insettable;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nothing/launcher/allapps/search/g;",
        "Landroid/view/View$OnTouchListener;",
        "Ls3/d;"
    }
.end annotation


# instance fields
.field private final g:Lcom/android/launcher3/views/ActivityContext;

.field private final h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

.field private final i:Landroid/text/SpannableStringBuilder;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Lcom/android/launcher3/ExtendedEditText;

.field private s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private t:Landroid/view/View;

.field private u:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "lookupContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->g:Lcom/android/launcher3/views/ActivityContext;

    new-instance p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1201c3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1201c2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1201c4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->l:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1201c5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120290

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->n:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public static synthetic b(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->f(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->k(Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V

    return-void
.end method

.method public static synthetic d(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->e(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static final e(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z
    .locals 3

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    xor-int/2addr p0, p2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "always_show_keyboard"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :goto_0
    return p2
.end method

.method private static final f(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;Landroid/view/View;)Z
    .locals 2

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    xor-int/2addr p0, p2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "app_suggestions"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p2
.end method

.method private final g()V
    .locals 3

    const v0, 0x7f0b0308

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.rl_all_apps_search)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->o:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->l()V

    const v0, 0x7f0b03c8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.text_all_apps_search_search)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/ExtendedEditText;

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->r:Lcom/android/launcher3/ExtendedEditText;

    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btn_all_apps_search_menu)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->p:Landroid/widget/ImageView;

    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.btn_all_apps_search_search)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->q:Landroid/widget/ImageView;

    const v0, 0x7f0b032b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.search_bar_ripple_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->t:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "rippleView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->u:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const-string v0, "actionButton"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->q:Landroid/widget/ImageView;

    const-string v2, "searchButton"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->r:Lcom/android/launcher3/ExtendedEditText;

    if-nez v0, :cond_4

    const-string v0, "searchEditText"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private final getOptions()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "always_show_keyboard"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v1, :cond_0

    const v5, 0x7f1201b7

    goto :goto_0

    :cond_0
    const v5, 0x7f1201b8

    :goto_0
    move v7, v5

    if-eqz v1, :cond_1

    const v5, 0x7f08035a

    goto :goto_1

    :cond_1
    const v5, 0x7f080359

    :goto_1
    move v8, v5

    if-eqz v1, :cond_2

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_KEYBOARD_CLOSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_KEYBOARD_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_2
    move-object v9, v5

    new-instance v10, Lcom/nothing/launcher/allapps/search/d;

    invoke-direct {v10, v1, p0}, Lcom/nothing/launcher/allapps/search/d;-><init>(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "app_suggestions"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v2, v6}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v0, :cond_3

    const v2, 0x7f1200d4

    goto :goto_3

    :cond_3
    const v2, 0x7f1200d5

    :goto_3
    move v9, v2

    if-eqz v0, :cond_4

    const v2, 0x7f0802bb

    goto :goto_4

    :cond_4
    const v2, 0x7f0802d8

    :goto_4
    move v10, v2

    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_5

    :cond_5
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALL_APPS_SUGGESTIONS_ENABLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_5
    move-object v11, v2

    new-instance v12, Lcom/nothing/launcher/allapps/search/c;

    invoke-direct {v12, v0, p0}, Lcom/nothing/launcher/allapps/search/c;-><init>(ZLcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    aput-object v3, p0, v4

    aput-object v1, p0, v6

    invoke-static {p0}, Lo5/j;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final h()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->focusSearchField()V

    return-void
.end method

.method private final i(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p1}, Lb3/x;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0}, Lb3/x;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->getOptions()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    return-void
.end method

.method private final j(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->u:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "rippleDrawable"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    iget-object p1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->t:Landroid/view/View;

    if-nez p1, :cond_1

    const-string p1, "rippleView"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    new-instance p1, Lcom/nothing/launcher/allapps/search/e;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/allapps/search/e;-><init>(Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private static final k(Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->u:Landroid/graphics/drawable/RippleDrawable;

    if-nez p0, :cond_0

    const-string p0, "rippleDrawable"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    return-void
.end method

.method private final l()V
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->o:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    const-string p0, "searchRelativeLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lz3/d;->a:Lz3/d;

    invoke-virtual {v0}, Lz3/d;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->k:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->p:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    const-string v1, "actionButton"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->m:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p0, 0x7f080357

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->n:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p0, 0x7f080356

    :goto_1
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public clearSearchResult()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const-string v1, "appsView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onClearSearchResult()V

    return-void
.end method

.method public bridge synthetic getBackgroundVisibility()Z
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getBackgroundVisibility()Z

    move-result p0

    return p0
.end method

.method public getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->r:Lcom/android/launcher3/ExtendedEditText;

    if-nez p0, :cond_0

    const-string p0, "searchEditText"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    new-instance v2, Lcom/nothing/launcher/allapps/search/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Lcom/nothing/launcher/allapps/search/a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->r:Lcom/android/launcher3/ExtendedEditText;

    if-nez p1, :cond_0

    const-string p1, "searchEditText"

    invoke-static {p1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    move-object v3, p1

    iget-object v4, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->g:Lcom/android/launcher3/views/ActivityContext;

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/search/SearchCallback;Lcom/nothing/launcher/allapps/search/g;)V

    return-void
.end method

.method public onAllAppsStateExit()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->exitAllAppsState()V

    return-void
.end method

.method public onAppsUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-nez v0, :cond_0

    const-string v0, "appsView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->clearSearch()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->i(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-nez v0, :cond_0

    const-string v0, "appsView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method public onEnterAllAppsFromNormalState()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_show_keyboard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->enterAllAppsFromNormalState()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->g()V

    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->l()V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->getEmptyMessageAdapterItem(Ljava/lang/String;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->s:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-nez p0, :cond_1

    const-string p0, "appsView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->q:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "searchButton"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, p2}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->j(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->r:Lcom/android/launcher3/ExtendedEditText;

    if-nez v1, :cond_3

    const-string v1, "searchEditText"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    return v0
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->i:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, p0, v1, v4, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    iget-object v0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->i:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v2, v3

    :cond_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h()V

    :cond_3
    return-void
.end method

.method public resetSearch()V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/allapps/search/NTAppsSearchContainerLayout;->h:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method
