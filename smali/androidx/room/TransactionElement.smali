.class public final Landroidx/room/TransactionElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$b;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/TransactionElement$Key;
    }
.end annotation


# static fields
.field public static final Key:Landroidx/room/TransactionElement$Key;


# instance fields
.field private final referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transactionDispatcher:Lq5/e;

.field private final transactionThreadControlJob:Li6/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/TransactionElement$Key;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/TransactionElement$Key;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    return-void
.end method

.method public constructor <init>(Li6/v1;Lq5/e;)V
    .locals 1

    const-string v0, "transactionThreadControlJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionElement;->transactionThreadControlJob:Li6/v1;

    iput-object p2, p0, Landroidx/room/TransactionElement;->transactionDispatcher:Lq5/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/room/TransactionElement;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final acquire()V
    .locals 0

    iget-object p0, p0, Landroidx/room/TransactionElement;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lq5/g$b$a;->a(Lq5/g$b;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/g$b$a;->b(Lq5/g$b;Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lq5/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/g$c<",
            "Landroidx/room/TransactionElement;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    return-object p0
.end method

.method public final getTransactionDispatcher$room_ktx_release()Lq5/e;
    .locals 0

    iget-object p0, p0, Landroidx/room/TransactionElement;->transactionDispatcher:Lq5/e;

    return-object p0
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/g$b$a;->c(Lq5/g$b;Lq5/g$c;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    invoke-static {p0, p1}, Lq5/g$b$a;->d(Lq5/g$b;Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Landroidx/room/TransactionElement;->referenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/room/TransactionElement;->transactionThreadControlJob:Li6/v1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Transaction was never started or was already released."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
