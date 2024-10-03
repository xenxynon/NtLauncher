.class final Li6/u1;
.super Li6/c2;
.source "SourceFile"


# instance fields
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

    invoke-direct {p0}, Li6/c2;-><init>()V

    iput-object p1, p0, Li6/u1;->k:Ly5/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/u1;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Li6/u1;->k:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
