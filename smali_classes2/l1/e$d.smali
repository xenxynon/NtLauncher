.class final Ll1/e$d;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/e;->b(Ll1/t;)Ll1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ll1/t;


# direct methods
.method constructor <init>(Ll1/t;)V
    .locals 0

    iput-object p1, p0, Ll1/e$d;->a:Ll1/t;

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ll1/e$d;->e(Ls1/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Ll1/e$d;->f(Ls1/c;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 2

    iget-object p0, p0, Ll1/e$d;->a:Ll1/t;

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object p1
.end method

.method public f(Ls1/c;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 2

    iget-object p0, p0, Ll1/e$d;->a:Ll1/t;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method
