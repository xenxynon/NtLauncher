.class final Lj1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic g:Lj1/a;


# direct methods
.method constructor <init>(Lj1/a;)V
    .locals 0

    iput-object p1, p0, Lj1/i;->g:Lj1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj1/i;->g:Lj1/a;

    invoke-static {v0}, Lj1/a;->e(Lj1/a;)Lj1/d;

    move-result-object v0

    invoke-virtual {v0}, Lj1/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj1/i;->g:Lj1/a;

    invoke-static {v0}, Lj1/a;->c(Lj1/a;)Lj1/m;

    move-result-object v0

    invoke-virtual {v0}, Lj1/m;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lj1/i;->g:Lj1/a;

    invoke-static {v0}, Lj1/a;->i(Lj1/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lj1/h;

    invoke-direct {v1, p0}, Lj1/h;-><init>(Lj1/i;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
