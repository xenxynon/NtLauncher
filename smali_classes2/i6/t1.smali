.class final Li6/t1;
.super Li6/x1;
.source "SourceFile"


# static fields
.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked:I

.field private final k:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Li6/t1;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li6/t1;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ly5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Li6/x1;-><init>()V

    iput-object p1, p0, Li6/t1;->k:Ly5/l;

    const/4 p1, 0x0

    iput p1, p0, Li6/t1;->_invoked:I

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/t1;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Li6/t1;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Li6/t1;->k:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
