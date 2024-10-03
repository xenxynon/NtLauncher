.class public Lcom/android/launcher3/util/OnboardingPrefs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ALL_APPS_VISITED_COUNT:Ljava/lang/String; = "launcher.all_apps_visited_count"

.field public static final ALL_PREF_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_BOUNCE_COUNT:Ljava/lang/String; = "launcher.home_bounce_count"

.field public static final HOME_BOUNCE_SEEN:Ljava/lang/String; = "launcher.apps_view_shown"

.field public static final HOTSEAT_DISCOVERY_TIP_COUNT:Ljava/lang/String; = "launcher.hotseat_discovery_tip_count"

.field public static final HOTSEAT_LONGPRESS_TIP_SEEN:Ljava/lang/String; = "launcher.hotseat_longpress_tip_seen"

.field private static final MAX_COUNTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final QSB_SEARCH_ONBOARDING_CARD_DISMISSED:Ljava/lang/String; = "launcher.qsb_edu_dismiss"

.field public static final SEARCH_KEYBOARD_EDU_SEEN:Ljava/lang/String; = "launcher.search_edu_seen"

.field public static final SEARCH_ONBOARDING_COUNT:Ljava/lang/String; = "launcher.search_onboarding_count"

.field public static final SEARCH_SNACKBAR_COUNT:Ljava/lang/String; = "launcher.keyboard_snackbar_count"

.field public static final TASKBAR_EDU_TOOLTIP_STEP:Ljava/lang/String; = "launcher.taskbar_edu_tooltip_step"


# instance fields
.field protected final mLauncher:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "launcher.apps_view_shown"

    const-string v1, "launcher.home_bounce_count"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "launcher.hotseat_discovery_tip_count"

    const-string v2, "launcher.hotseat_longpress_tip_seen"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v2, "launcher.search_edu_seen"

    const-string v12, "launcher.keyboard_snackbar_count"

    const-string v13, "launcher.search_onboarding_count"

    const-string v4, "launcher.qsb_edu_dismiss"

    filled-new-array {v2, v12, v13, v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v14, "launcher.taskbar_edu_tooltip_step"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v9

    const-string v15, "launcher.all_apps_visited_count"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v11

    const-string v2, "All Apps Bounce"

    const-string v4, "Hybrid Hotseat Education"

    const-string v6, "Search Education"

    const-string v8, "Taskbar Education"

    const-string v10, "All Apps Visited Count"

    invoke-static/range {v2 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/util/OnboardingPrefs;->ALL_PREF_KEYS:Ljava/util/Map;

    new-instance v2, Landroid/util/ArrayMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->MAX_COUNTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private hasReachedMaxCount(ILjava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/launcher3/util/OnboardingPrefs;->MAX_COUNTS:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public hasReachedMaxCount(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->getCount(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public incrementEventCount(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->getCount(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public markChecked(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEventCount(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/OnboardingPrefs;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
