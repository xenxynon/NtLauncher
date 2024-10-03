.class public final Lv2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/b$a;
    }
.end annotation


# static fields
.field public static final a:Lv2/b;

.field private static final b:Landroid/app/Application;

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lv2/b$a;

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv2/b;

    invoke-direct {v0}, Lv2/b;-><init>()V

    sput-object v0, Lv2/b;->a:Lv2/b;

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lv2/b;->b:Landroid/app/Application;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lv2/b;->c:Ljava/util/ArrayList;

    new-instance v1, Lv2/b$a;

    invoke-direct {v1}, Lv2/b$a;-><init>()V

    sput-object v1, Lv2/b;->d:Lv2/b$a;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    sput-boolean v0, Lv2/b;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lv2/b;)V
    .locals 0

    invoke-direct {p0}, Lv2/b;->c()V

    return-void
.end method

.method public static final synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lv2/b;->e:Z

    return-void
.end method

.method private final c()V
    .locals 2

    sget-object v0, Lv2/b;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lv2/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lv2/b;->b:Landroid/app/Application;

    sget-object v1, Lv2/b;->d:Lv2/b$a;

    invoke-direct {p0, v0, v1}, Lv2/b;->e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterReceiverSafely error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserUnlockedActionExecutor"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string p0, "action"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lv2/b;->e:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object p0, Lv2/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lv2/b;->f:Z

    if-nez p0, :cond_1

    sget-object p0, Lv2/b;->b:Landroid/app/Application;

    sget-object p1, Lv2/b;->d:Lv2/b$a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    sput-boolean p0, Lv2/b;->f:Z

    :cond_1
    :goto_0
    return-void
.end method
