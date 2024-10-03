.class public final Lcom/nothing/launcher/ossupport/core/NothingOSCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/ossupport/core/NothingOSCore$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/launcher/ossupport/core/NothingOSCore$a;

.field private static final TAG:Ljava/lang/String; = "NothingOSCore"


# instance fields
.field private final callback$delegate:Ln5/e;

.field private final nothingCoreService:Lg5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/ossupport/core/NothingOSCore$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->Companion:Lcom/nothing/launcher/ossupport/core/NothingOSCore$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lg5/a;->c(Landroid/content/Context;)Lg5/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->nothingCoreService:Lg5/a;

    new-instance v0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b;-><init>(Lcom/nothing/launcher/ossupport/core/NothingOSCore;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->callback$delegate:Ln5/e;

    return-void
.end method

.method private final getCallback()Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->callback$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;

    return-object p0
.end method


# virtual methods
.method public final goToSleep()V
    .locals 2

    const-string v0, "NothingOSCore"

    const-string v1, "Double tap to lock screen!"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->nothingCoreService:Lg5/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lg5/a;->d(J)V

    return-void
.end method

.method public final init()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NothingOSCore"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->nothingCoreService:Lg5/a;

    invoke-direct {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->getCallback()Lcom/nothing/launcher/ossupport/core/NothingOSCore$b$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lg5/a;->e(Lg5/a$a;)V

    return-void
.end method

.method public final isUninstallableSystemApp(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->nothingCoreService:Lg5/a;

    invoke-virtual {p0, p1}, Lg5/a;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->init()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->unInit()V

    return-void
.end method

.method public final startUninstallApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.nothing.settings.SETTING_UNINSTALL_PACKAGE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "user_id"

    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "package_name"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "package_label"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startUninstallSystemApp failed, exception is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NothingOSCore"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final unInit()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#uninit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NothingOSCore"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->nothingCoreService:Lg5/a;

    invoke-virtual {p0}, Lg5/a;->g()V

    return-void
.end method
