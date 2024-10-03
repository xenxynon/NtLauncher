.class Lg5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Lg5/a;


# direct methods
.method private constructor <init>(Lg5/a;)V
    .locals 0

    iput-object p1, p0, Lg5/a$b;->g:Lg5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg5/a;Lg5/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/a$b;-><init>(Lg5/a;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "NothingCore"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lg5/a$b;->g:Lg5/a;

    invoke-static {p2}, Lf5/a$a;->R(Landroid/os/IBinder;)Lf5/a;

    move-result-object p2

    invoke-static {v0, p2}, Lg5/a;->b(Lg5/a;Lf5/a;)V

    iget-object p2, p0, Lg5/a$b;->g:Lg5/a;

    invoke-static {p2}, Lg5/a;->a(Lg5/a;)Lg5/a$a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lg5/a$b;->g:Lg5/a;

    invoke-static {p0}, Lg5/a;->a(Lg5/a;)Lg5/a$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lg5/a$a;->a(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "NothingCore"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lg5/a$b;->g:Lg5/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg5/a;->b(Lg5/a;Lf5/a;)V

    iget-object v0, p0, Lg5/a$b;->g:Lg5/a;

    invoke-static {v0}, Lg5/a;->a(Lg5/a;)Lg5/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg5/a$b;->g:Lg5/a;

    invoke-static {p0}, Lg5/a;->a(Lg5/a;)Lg5/a$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lg5/a$a;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
