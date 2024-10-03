.class final Lx3/a$c;
.super Lx3/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    const-string v0, "refreshContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lx3/a$d;-><init>(Landroid/content/Context;Z)V

    iput-boolean p3, p0, Lx3/a$c;->d:Z

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 3

    const-string v0, "StateController"

    const-string v1, "NothingIconForceRenderRefreshJob execute, unsuitable icons will be refreshed now."

    invoke-static {v0, v1}, Ly3/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx3/a$d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nothing.launcher.NOTHING_ICON_FORCE_RENDER_ENABLE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lx3/a$c;->d:Z

    const-string v2, "nothing_icon_pack_force_render_enable"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
