.class final Lq0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic g:Lq0/e;


# direct methods
.method public constructor <init>(Lq0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lq0/e$a;->g:Lq0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v0, p0, Lq0/e$a;->g:Lq0/e;

    invoke-static {v0}, Lq0/e;->c(Lq0/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lq0/e$a;->g:Lq0/e;

    invoke-static {v0}, Lq0/e;->d(Lq0/e;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq0/e$a;->g:Lq0/e;

    invoke-static {v0}, Lq0/e;->d(Lq0/e;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lq0/e$a;->g:Lq0/e;

    invoke-static {v0}, Lq0/e;->e(Lq0/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/e$b;

    invoke-interface {v1, p1}, Lq0/e$b;->onRotationChanged(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lq0/e$a;->g:Lq0/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lq0/e;->f(Lq0/e;Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
