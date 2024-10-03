.class final Li6/n2;
.super Li6/c2;
.source "SourceFile"


# instance fields
.field private final k:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Li6/c2;-><init>()V

    iput-object p1, p0, Li6/n2;->k:Lq5/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/n2;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Li6/n2;->k:Lq5/d;

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-static {p1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lq5/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
