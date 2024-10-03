.class public abstract Lo4/a;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/a$a;
    }
.end annotation


# static fields
.field public static final i:Lo4/a$a;


# instance fields
.field protected g:Lcom/android/launcher3/DeviceProfile;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo4/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo4/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lo4/a;->i:Lo4/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo4/a;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private final s()V
    .locals 4

    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    sget-object v1, Lk4/a;->a:Lk4/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lk4/a;->d(Lk4/a;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f130145

    goto :goto_0

    :cond_0
    const v1, 0x7f13014f

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method private final t()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BaseHomePreviewActivity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo4/a;->q()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v2, 0x7f0b010b

    invoke-virtual {p0, v2, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceProfile()Lj3/a;
    .locals 1

    invoke-virtual {p0}, Lo4/a;->r()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.grid.NTDeviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lj3/a;

    return-object p0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/views/ActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const-string v0, "super<ActivityContext>.getLayoutInflater()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo4/a;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected initDeviceProfile()V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    const-string v1, "app.invariantDeviceProfi\u2026ofile(applicationContext)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo4/a;->u(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Lo4/a;->onDeviceProfileInitiated()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0040

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-direct {p0}, Lo4/a;->s()V

    invoke-direct {p0}, Lo4/a;->t()V

    invoke-virtual {p0}, Lo4/a;->initDeviceProfile()V

    return-void
.end method

.method protected onDeviceProfileInitiated()V
    .locals 1

    invoke-virtual {p0}, Lo4/a;->r()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo4/a;->r()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->updateIsSeascape(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public abstract q()Landroidx/fragment/app/Fragment;
.end method

.method protected final r()Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, Lo4/a;->g:Lcom/android/launcher3/DeviceProfile;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mDeviceProfile"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final u(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo4/a;->g:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method
