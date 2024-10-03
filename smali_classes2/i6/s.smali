.class public final Li6/s;
.super Li6/x1;
.source "SourceFile"


# instance fields
.field public final k:Li6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li6/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/o<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Li6/x1;-><init>()V

    iput-object p1, p0, Li6/s;->k:Li6/o;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li6/s;->z(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Li6/s;->k:Li6/o;

    invoke-virtual {p0}, Li6/c2;->A()Li6/d2;

    move-result-object p0

    invoke-virtual {p1, p0}, Li6/o;->t(Li6/v1;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Li6/o;->H(Ljava/lang/Throwable;)V

    return-void
.end method
