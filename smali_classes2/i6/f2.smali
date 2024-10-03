.class final Li6/f2;
.super Li6/p2;
.source "SourceFile"


# instance fields
.field private final i:Lq5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq5/g;Ly5/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g;",
            "Ly5/p<",
            "-",
            "Li6/m0;",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Li6/p2;-><init>(Lq5/g;Z)V

    invoke-static {p2, p0, p0}, Lr5/b;->a(Ly5/p;Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p1

    iput-object p1, p0, Li6/f2;->i:Lq5/d;

    return-void
.end method


# virtual methods
.method protected x0()V
    .locals 1

    iget-object v0, p0, Li6/f2;->i:Lq5/d;

    invoke-static {v0, p0}, Lm6/a;->b(Lq5/d;Lq5/d;)V

    return-void
.end method
