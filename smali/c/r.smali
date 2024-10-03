.class public abstract Lc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/r$d;,
        Lc/r$e;,
        Lc/r$b;,
        Lc/r$c;
    }
.end annotation


# static fields
.field public static final g:Lc/a;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/r$e;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/view/Choreographer;

.field private e:Lc/r$d;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc/r;->g:Lc/a;

    return-void
.end method

.method protected constructor <init>(IILandroid/view/Choreographer;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/r;->b:Ljava/util/List;

    new-instance v0, Lc/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/r$d;-><init>(Lc/r$a;)V

    iput-object v0, p0, Lc/r;->e:Lc/r$d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/r;->f:Z

    iput p1, p0, Lc/r;->a:I

    iput-object p3, p0, Lc/r;->d:Landroid/view/Choreographer;

    iput-object p4, p0, Lc/r;->c:Ljava/util/concurrent/Executor;

    new-instance p1, Lc/j;

    invoke-direct {p1, p0, p2}, Lc/j;-><init>(Lc/r;I)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static B(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lc/p;->a:Lc/p;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/r;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lc/r;->u(Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lc/r$b;Ljava/util/ArrayList;Lc/r$e;)Ld/d;
    .locals 0

    invoke-static {p0, p1, p2}, Lc/r;->v(Lc/r$b;Ljava/util/ArrayList;Lc/r$e;)Ld/d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lc/r;Lc/r$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/r;->y(Lc/r$e;)V

    return-void
.end method

.method public static synthetic d(Lc/r;Lc/r$d;Lc/r$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/r;->w(Lc/r$d;Lc/r$d;)V

    return-void
.end method

.method public static synthetic e(Lc/r$b;Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lc/r;->t(Lc/r$b;Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lc/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Lc/r;->x(I)V

    return-void
.end method

.method public static synthetic g(Lc/r$e;)Z
    .locals 0

    invoke-static {p0}, Lc/r;->s(Lc/r$e;)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lc/r;)I
    .locals 0

    iget p0, p0, Lc/r;->a:I

    return p0
.end method

.method static synthetic i(Lc/r;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lc/r;->d:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic j(Lc/r;)Lc/r$d;
    .locals 0

    iget-object p0, p0, Lc/r;->e:Lc/r$d;

    return-object p0
.end method

.method static synthetic k(Lc/r;Lc/r$d;)Lc/r$d;
    .locals 0

    iput-object p1, p0, Lc/r;->e:Lc/r$d;

    return-object p1
.end method

.method static synthetic l(Lc/r;Lc/r$d;Lc/r$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/r;->m(Lc/r$d;Lc/r$d;)V

    return-void
.end method

.method private m(Lc/r$d;Lc/r$d;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lc/r;->e:Lc/r$d;

    iput-object v0, p2, Lc/r$d;->i:Lc/r$d;

    iput-object p1, p0, Lc/r;->e:Lc/r$d;

    return-void
.end method

.method public static n(Ljava/lang/String;I)Lc/a;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance p0, Lc/a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method private q(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/function/Predicate;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lc/r$e;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/util/List<",
            "Ld/d;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lc/r$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/r$b;-><init>(Landroid/content/res/Resources;)V

    new-instance p1, Lc/h;

    invoke-direct {p1, p0, p3}, Lc/h;-><init>(Lc/r;Ljava/util/function/Predicate;)V

    sget-object p3, Lc/r;->g:Lc/a;

    invoke-static {p1, p3}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance p3, Lc/o;

    invoke-direct {p3, v0, p2}, Lc/o;-><init>(Lc/r$b;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lc/r;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, p0}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private r(I)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lc/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/r$d;-><init>(Lc/r$a;)V

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v4, Lc/r$d;

    invoke-direct {v4, v1}, Lc/r$d;-><init>(Lc/r$a;)V

    iput-object v4, v3, Lc/r$d;->i:Lc/r$d;

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_0
    sget-object p1, Lc/r;->g:Lc/a;

    new-instance v1, Lc/k;

    invoke-direct {v1, p0, v0, v3}, Lc/k;-><init>(Lc/r;Lc/r$d;Lc/r$d;)V

    invoke-virtual {p1, v1}, Lc/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic s(Lc/r$e;)Z
    .locals 0

    invoke-static {p0}, Lc/r$e;->c(Lc/r$e;)Z

    move-result p0

    return p0
.end method

.method private static synthetic t(Lc/r$b;Ljava/util/ArrayList;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lc/n;

    invoke-direct {v0, p0, p1}, Lc/n;-><init>(Lc/r$b;Ljava/util/ArrayList;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic u(Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lc/r;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic v(Lc/r$b;Ljava/util/ArrayList;Lc/r$e;)Ld/d;
    .locals 0

    invoke-static {p2, p0, p1}, Lc/r$e;->e(Lc/r$e;Lc/r$b;Ljava/util/ArrayList;)Ld/d;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w(Lc/r$d;Lc/r$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/r;->m(Lc/r$d;Lc/r$d;)V

    return-void
.end method

.method private synthetic x(I)V
    .locals 0

    invoke-direct {p0, p1}, Lc/r;->r(I)V

    return-void
.end method

.method private synthetic y(Lc/r$e;)V
    .locals 0

    iget-object p0, p0, Lc/r;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lc/r$e;->i()V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/Window;)Landroid/media/permission/SafeCloseable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lc/r;->z(Landroid/view/View;Ljava/lang/String;)Landroid/media/permission/SafeCloseable;

    move-result-object p0

    return-object p0
.end method

.method public o(Ljava/io/OutputStream;Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-boolean v0, p0, Lc/r;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ld/a;->l()Ld/a$b;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/a$b;->c(Ljava/lang/String;)Ld/a$b;

    move-result-object v1

    sget-object v2, Lc/q;->a:Lc/q;

    invoke-direct {p0, p2, v0, v2}, Lc/r;->q(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/function/Predicate;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-virtual {v1, p0}, Ld/a$b;->b(Ljava/lang/Iterable;)Ld/a$b;

    move-result-object p0

    invoke-static {v0}, Lc/r;->B(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Ld/a$b;->a(Ljava/lang/Iterable;)Ld/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Ld/a;

    invoke-virtual {p0, p1}, Lt1/a;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected p(Z)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput-boolean p1, p0, Lc/r;->f:Z

    iget-object p1, p0, Lc/r;->b:Ljava/util/List;

    sget-object v0, Lc/m;->g:Lc/m;

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lc/r;->f:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lc/r;->b:Ljava/util/List;

    sget-object p1, Lc/l;->g:Lc/l;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public z(Landroid/view/View;Ljava/lang/String;)Landroid/media/permission/SafeCloseable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lc/r$e;

    invoke-direct {v0, p0, p1, p2}, Lc/r$e;-><init>(Lc/r;Landroid/view/View;Ljava/lang/String;)V

    iget-boolean p1, p0, Lc/r;->f:Z

    if-eqz p1, :cond_0

    sget-object p1, Lc/r;->g:Lc/a;

    new-instance p2, Lc/i;

    invoke-direct {p2, v0}, Lc/i;-><init>(Lc/r$e;)V

    invoke-virtual {p1, p2}, Lc/a;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lc/r;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc/g;

    invoke-direct {p1, p0, v0}, Lc/g;-><init>(Lc/r;Lc/r$e;)V

    return-object p1
.end method
