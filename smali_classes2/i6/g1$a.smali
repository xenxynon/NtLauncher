.class final Li6/g1$a;
.super Li6/g1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final j:Li6/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/n<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Li6/g1;


# direct methods
.method public constructor <init>(Li6/g1;JLi6/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Li6/n<",
            "-",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li6/g1$a;->k:Li6/g1;

    invoke-direct {p0, p2, p3}, Li6/g1$b;-><init>(J)V

    iput-object p4, p0, Li6/g1$a;->j:Li6/n;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li6/g1$a;->j:Li6/n;

    iget-object p0, p0, Li6/g1$a;->k:Li6/g1;

    sget-object v1, Ln5/t;->a:Ln5/t;

    invoke-interface {v0, p0, v1}, Li6/n;->y(Li6/i0;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Li6/g1$b;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Li6/g1$a;->j:Li6/n;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
