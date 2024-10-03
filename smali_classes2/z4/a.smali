.class public final Lz4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/a;

.field private static final b:Landroid/app/Application;

.field private static final c:Ljava/lang/String;

.field private static final d:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz4/a;

    invoke-direct {v0}, Lz4/a;-><init>()V

    sput-object v0, Lz4/a;->a:Lz4/a;

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lz4/a;->b:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz4/a;->c:Ljava/lang/String;

    sget-object v0, Lz4/a$a;->g:Lz4/a$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lz4/a;->d:Ln5/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/app/Application;
    .locals 1

    sget-object v0, Lz4/a;->b:Landroid/app/Application;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz4/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private final c(Landroid/view/View;)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, p0, v0}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "android.activity.splashScreenStyle"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "makeClipRevealAnimation(\u2026TYLE_EMPTY)\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final d(Landroid/content/Context;F)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lw2/a;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f120181

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.launcher3.WALLPAPER_OFFSET"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string p2, "com.android.wallpaper.LAUNCH_SOURCE"

    const-string v0, "app_launched_launcher"

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/launcher3/views/OptionsPopupView;->styleWallpapersExists(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "focus_wallpaper"

    goto :goto_0

    :cond_1
    const-string p2, "wallpaper_only"

    :goto_0
    const-string v0, "com.android.launcher3.WALLPAPER_FLAVOR"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Lz4/j;->a:Lz4/j;

    invoke-virtual {p2, p1, p0}, Lz4/j;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    return-object p0
.end method

.method private final e()Z
    .locals 0

    sget-object p0, Lz4/a;->d:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lz4/a;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static final i(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nothing.launcher.hidden_apps_edit"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {v1}, Lcom/nothing/launcher/NTLauncherApplication$a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.activity.splashScreenStyle"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lz4/a;->a:Lz4/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "view.context"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v0, v1}, Lz4/a;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z

    return-void
.end method

.method public static final j(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.nothing.launcher.hidden_apps_edit"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {v0}, Lcom/nothing/launcher/NTLauncherApplication$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lz4/a;->a:Lz4/a;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lz4/a;->g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z

    return-void
.end method

.method private final o(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lz4/a;->d(Landroid/content/Context;F)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v0, Lz4/a;->a:Lz4/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lz4/a;->c(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v2, p0, p1}, Lz4/a;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    const/4 p3, 0x0

    if-eqz p0, :cond_0

    const v0, 0x7f12005a

    invoke-static {p1, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startActivitySafely: Unable to launch intent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", exception is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityJumper"

    invoke-static {p2, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p3, 0x1

    :cond_1
    return p3
.end method

.method public final h(Landroid/view/View;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lz4/a;->o(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Landroid/view/View;)Z
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lz4/a;->c(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.nothing.launcher.icon_pack_picker"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {v0}, Lcom/nothing/launcher/NTLauncherApplication$a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lz4/a;->g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z

    return-void
.end method

.method public final m(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz4/a;->a:Lz4/a;

    new-instance v3, Landroid/content/Intent;

    const-string v1, "market://search?q=Nothing Icon Pack&c=apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v0}, Lz4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lz4/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Ln5/t;->a:Ln5/t;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lz4/a;->g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string p0, "https://play.google.com/store/search?q=Nothing Icon Pack&c=apps"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v3, v7, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v0}, Lz4/a;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lz4/a;->c:Ljava/lang/String;

    invoke-virtual {v3, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lz4/a;->g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final n(Landroid/content/Context;F)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lz4/a;->d(Landroid/content/Context;F)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v1, Lz4/a;->a:Lz4/a;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lz4/a;->g(Lz4/a;Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method
