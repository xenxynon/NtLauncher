.class public Lg5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg5/a$a;,
        Lg5/a$b;
    }
.end annotation


# static fields
.field private static e:Lg5/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lg5/a$b;

.field private c:Lf5/a;

.field private d:Lg5/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg5/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg5/a$b;-><init>(Lg5/a;Lg5/b;)V

    iput-object v0, p0, Lg5/a;->b:Lg5/a$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK Version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj5/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NothingCore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lg5/a;->a:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lg5/a;)Lg5/a$a;
    .locals 0

    iget-object p0, p0, Lg5/a;->d:Lg5/a$a;

    return-object p0
.end method

.method static bridge synthetic b(Lg5/a;Lf5/a;)V
    .locals 0

    iput-object p1, p0, Lg5/a;->c:Lf5/a;

    return-void
.end method

.method public static c(Landroid/content/Context;)Lg5/a;
    .locals 1

    sget-object v0, Lg5/a;->e:Lg5/a;

    if-nez v0, :cond_0

    new-instance v0, Lg5/a;

    invoke-direct {v0, p0}, Lg5/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lg5/a;->e:Lg5/a;

    :cond_0
    sget-object p0, Lg5/a;->e:Lg5/a;

    return-object p0
.end method


# virtual methods
.method public d(J)V
    .locals 2

    iget-object v0, p0, Lg5/a;->c:Lf5/a;

    const-string v1, "NothingCore"

    if-nez v0, :cond_0

    const-string p1, "Service is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lg5/a;->d:Lg5/a$a;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lg5/a$a;->b(I)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lf5/a;->M(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lg5/a;->d:Lg5/a$a;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lg5/a$a;->b(I)V

    const-string p0, "goToSleep RemoteException error"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public e(Lg5/a$a;)V
    .locals 3

    iput-object p1, p0, Lg5/a;->d:Lg5/a$a;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.nothing.proxy"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.nothing.proxy.bind_nothing_service"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nothing.proxy.NothingService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lg5/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lg5/a;->b:Lg5/a$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lg5/a;->c:Lf5/a;

    const/4 v1, 0x0

    const-string v2, "NothingCore"

    if-nez v0, :cond_0

    const-string p1, "Service is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lg5/a;->d:Lg5/a$a;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lg5/a$a;->b(I)V

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lf5/a;->p(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    iget-object p0, p0, Lg5/a;->d:Lg5/a$a;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lg5/a$a;->b(I)V

    const-string p0, "isUninstallableSystemApp RemoteException error"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg5/a;->a:Landroid/content/Context;

    iget-object p0, p0, Lg5/a;->b:Lg5/a$b;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NothingCore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
