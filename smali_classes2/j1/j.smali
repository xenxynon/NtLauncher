.class final Lj1/j;
.super Li1/d;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final g:Landroid/os/Handler;

.field private h:Lj1/a;

.field private i:Landroid/view/WindowManager;

.field private j:I

.field private k:Landroid/view/Window;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Li1/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lj1/j;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final D(F)V
    .locals 2

    iget-object v0, p0, Lj1/j;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lj1/j;->g:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final H(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "service_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lj1/j;->I(Landroid/os/Bundle;)V

    return-void
.end method

.method public final I(Landroid/os/Bundle;)V
    .locals 2

    iget-object p0, p0, Lj1/j;->g:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final S(Lj1/a;)V
    .locals 2

    iput-object p1, p0, Lj1/j;->h:Lj1/a;

    invoke-static {p1}, Lj1/a;->i(Lj1/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lj1/j;->i:Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {p1}, Lj1/a;->i(Lj1/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lj1/j;->j:I

    invoke-static {p1}, Lj1/a;->i(Lj1/a;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lj1/j;->k:Landroid/view/Window;

    return-void
.end method

.method public final T()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lj1/j;->h:Lj1/a;

    iput-object v0, p0, Lj1/j;->i:Landroid/view/WindowManager;

    iput-object v0, p0, Lj1/j;->k:Landroid/view/Window;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget-object v0, p0, Lj1/j;->h:Lj1/a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0}, Lj1/a;->n(Lj1/a;)Lj1/f;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v3, "stateChanged"

    invoke-virtual {v0, v3, p1}, Lj1/f;->b(Ljava/lang/String;I)V

    iget-object p0, p0, Lj1/j;->h:Lj1/a;

    invoke-static {p0, v2}, Lj1/a;->o(Lj1/a;Landroid/os/Bundle;)V

    return v1

    :cond_2
    iget-object v0, p0, Lj1/j;->k:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lj1/j;->j:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x200

    goto :goto_0

    :cond_3
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x201

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lj1/j;->i:Landroid/view/WindowManager;

    iget-object p0, p0, Lj1/j;->k:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :cond_4
    invoke-static {v0}, Lj1/a;->l(Lj1/a;)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lj1/j;->h:Lj1/a;

    invoke-static {v0}, Lj1/a;->m(Lj1/a;)Lj1/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lj1/b;->onOverlayScrollChanged(F)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    iget-object p0, p0, Lj1/j;->h:Lj1/a;

    invoke-static {p0}, Lj1/a;->n(Lj1/a;)Lj1/f;

    move-result-object p0

    const-string p1, "onScroll 0, overlay closed"

    :goto_1
    invoke-virtual {p0, p1}, Lj1/f;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    iget-object p0, p0, Lj1/j;->h:Lj1/a;

    invoke-static {p0}, Lj1/a;->n(Lj1/a;)Lj1/f;

    move-result-object p0

    if-ltz v0, :cond_6

    const-string p1, "onScroll 1, overlay opened"

    goto :goto_1

    :cond_6
    const-string v0, "onScroll"

    invoke-virtual {p0, v0, p1}, Lj1/f;->c(Ljava/lang/String;F)V

    :cond_7
    :goto_2
    return v1
.end method
