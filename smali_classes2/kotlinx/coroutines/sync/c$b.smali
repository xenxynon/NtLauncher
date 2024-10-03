.class abstract Lkotlinx/coroutines/sync/c$b;
.super Lkotlinx/coroutines/internal/o;
.source "SourceFile"

# interfaces
.implements Li6/c1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# static fields
.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic isTaken:I

.field public final j:Ljava/lang/Object;

.field final synthetic k:Lkotlinx/coroutines/sync/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/sync/c$b;

    const-string v1, "isTaken"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/c$b;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/sync/c$b;->k:Lkotlinx/coroutines/sync/c;

    invoke-direct {p0}, Lkotlinx/coroutines/internal/o;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/c$b;->j:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/sync/c$b;->isTaken:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    sget-object v0, Lkotlinx/coroutines/sync/c$b;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public abstract B()Z
.end method

.method public final dispose()V
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->u()Z

    return-void
.end method

.method public abstract z()V
.end method
