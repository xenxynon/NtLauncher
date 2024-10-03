.class public final Lcom/nothing/cardhost/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardhost/h;-><init>(Landroid/content/Context;ILcom/nothing/cardhost/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/cardhost/h;


# direct methods
.method constructor <init>(Lcom/nothing/cardhost/h;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->c(Lcom/nothing/cardhost/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "timeHandler"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->e(Lcom/nothing/cardhost/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->d(Lcom/nothing/cardhost/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->a(Lcom/nothing/cardhost/h;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->b(Lcom/nothing/cardhost/h;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v5}, Lcom/nothing/cardhost/h;->f(Lcom/nothing/cardhost/h;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->b(Lcom/nothing/cardhost/h;)J

    move-result-wide v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->b(Lcom/nothing/cardhost/h;)J

    move-result-wide v5

    sub-long v3, v5, v3

    :goto_1
    iget-object v0, p0, Lcom/nothing/cardhost/h$d;->g:Lcom/nothing/cardhost/h;

    invoke-static {v0}, Lcom/nothing/cardhost/h;->c(Lcom/nothing/cardhost/h;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delay to update widget, refresh time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeriodRefreshWork"

    invoke-virtual {p0, v1, v0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
