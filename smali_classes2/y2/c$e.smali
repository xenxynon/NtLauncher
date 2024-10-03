.class public final Ly2/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/c$e$a;
    }
.end annotation


# static fields
.field public static final c:Ly2/c$e$a;

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:I

.field private final b:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/c$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/c$e$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ly2/c$e;->c:Ly2/c$e$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ly2/c$e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ly2/c$e;->a:I

    new-instance p2, Ly2/c$e$b;

    invoke-direct {p2, p1}, Ly2/c$e$b;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Ly2/c$e;->b:Ln5/e;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Ly2/c$e;->d(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Ly2/c$e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/c$e;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final d(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "un catch thread error, thread name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", error = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExecutorUtils"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ly2/c$e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ly2/c$e;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ly2/c$e$c;

    invoke-direct {v1, p1, v0}, Ly2/c$e$c;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sget-object p1, Ly2/d;->a:Ly2/d;

    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget p0, p0, Ly2/c$e;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v1
.end method
