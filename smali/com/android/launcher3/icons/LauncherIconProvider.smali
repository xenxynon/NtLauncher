.class public Lcom/android/launcher3/icons/LauncherIconProvider;
.super Lo3/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lo3/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canUseLocalIconOverrides()Z
    .locals 0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->USE_LOCAL_ICON_OVERRIDES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    return p0
.end method
