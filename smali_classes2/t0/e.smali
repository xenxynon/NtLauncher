.class public final Lt0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/o;


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Lq0/e;

.field private final i:Lt0/h;

.field private j:Z

.field private final k:Lq0/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq0/e;Lm0/o;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotationChangeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfoldTransitionProgressProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/e;->g:Landroid/content/Context;

    iput-object p2, p0, Lt0/e;->h:Lq0/e;

    new-instance p1, Lt0/h;

    invoke-direct {p1, p3}, Lt0/h;-><init>(Lm0/o;)V

    iput-object p1, p0, Lt0/e;->i:Lt0/h;

    new-instance p1, Lt0/d;

    invoke-direct {p1, p0}, Lt0/d;-><init>(Lt0/e;)V

    iput-object p1, p0, Lt0/e;->k:Lq0/e$b;

    return-void
.end method

.method public static synthetic a(Lt0/e;I)V
    .locals 0

    invoke-static {p0, p1}, Lt0/e;->e(Lt0/e;I)V

    return-void
.end method

.method private static final e(Lt0/e;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Lt0/e;->j:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lt0/e;->j:Z

    iget-object p0, p0, Lt0/e;->i:Lt0/h;

    invoke-virtual {p0, p1}, Lt0/h;->setReadyToHandleTransition(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm0/o$a;

    invoke-virtual {p0, p1}, Lt0/e;->b(Lm0/o$a;)V

    return-void
.end method

.method public b(Lm0/o$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt0/e;->i:Lt0/h;

    invoke-virtual {p0, p1}, Lt0/h;->addCallback(Lm0/o$a;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lt0/e;->h:Lq0/e;

    iget-object v1, p0, Lt0/e;->k:Lq0/e$b;

    invoke-virtual {v0, v1}, Lq0/e;->g(Lq0/e$b;)V

    iget-object v0, p0, Lt0/e;->k:Lq0/e$b;

    iget-object p0, p0, Lt0/e;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    invoke-interface {v0, p0}, Lq0/e$b;->onRotationChanged(I)V

    return-void
.end method

.method public d(Lm0/o$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt0/e;->i:Lt0/h;

    invoke-virtual {p0, p1}, Lt0/h;->removeCallback(Lm0/o$a;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lt0/e;->h:Lq0/e;

    iget-object v1, p0, Lt0/e;->k:Lq0/e$b;

    invoke-virtual {v0, v1}, Lq0/e;->i(Lq0/e$b;)V

    iget-object p0, p0, Lt0/e;->i:Lt0/h;

    invoke-virtual {p0}, Lt0/h;->destroy()V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm0/o$a;

    invoke-virtual {p0, p1}, Lt0/e;->d(Lm0/o$a;)V

    return-void
.end method
