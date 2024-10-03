.class public final Lo0/h;
.super Lo0/c$a;
.source "SourceFile"

# interfaces
.implements Lm0/o;


# instance fields
.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lm0/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lm0/o$a;


# direct methods
.method public static synthetic R(Lo0/h;)V
    .locals 0

    invoke-static {p0}, Lo0/h;->X(Lo0/h;)V

    return-void
.end method

.method public static synthetic S(Lo0/h;)V
    .locals 0

    invoke-static {p0}, Lo0/h;->V(Lo0/h;)V

    return-void
.end method

.method public static synthetic T(Lo0/h;F)V
    .locals 0

    invoke-static {p0, p1}, Lo0/h;->W(Lo0/h;F)V

    return-void
.end method

.method private static final V(Lo0/h;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/h;->i:Lm0/o$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lm0/o$a;->onTransitionFinished()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final W(Lo0/h;F)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/h;->i:Lm0/o$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lm0/o$a;->onTransitionProgress(F)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final X(Lo0/h;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/h;->i:Lm0/o$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lm0/o$a;->onTransitionStarted()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public U(Lm0/o$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/h;->h:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Y(Lm0/o$a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo0/h;->h:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm0/o$a;

    invoke-virtual {p0, p1}, Lo0/h;->U(Lm0/o$a;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lo0/h;->h:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onTransitionFinished()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lo0/h;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lo0/f;

    invoke-direct {v1, p0}, Lo0/f;-><init>(Lo0/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTransitionProgress(F)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lo0/h;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lo0/g;

    invoke-direct {v1, p0, p1}, Lo0/g;-><init>(Lo0/h;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTransitionStarted()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lo0/h;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lo0/e;

    invoke-direct {v1, p0}, Lo0/e;-><init>(Lo0/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lm0/o$a;

    invoke-virtual {p0, p1}, Lo0/h;->Y(Lm0/o$a;)V

    return-void
.end method
