.class Lo1/n$a0$a;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/n$a0;->a(Ll1/e;Lr1/a;)Ll1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lo1/n$a0;


# direct methods
.method constructor <init>(Lo1/n$a0;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lo1/n$a0$a;->b:Lo1/n$a0;

    iput-object p2, p0, Lo1/n$a0$a;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ls1/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a;",
            ")TT1;"
        }
    .end annotation

    iget-object v0, p0, Lo1/n$a0$a;->b:Lo1/n$a0;

    iget-object v0, v0, Lo1/n$a0;->h:Ll1/t;

    invoke-virtual {v0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo1/n$a0$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll1/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo1/n$a0$a;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but was "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ll1/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public d(Ls1/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/c;",
            "TT1;)V"
        }
    .end annotation

    iget-object p0, p0, Lo1/n$a0$a;->b:Lo1/n$a0;

    iget-object p0, p0, Lo1/n$a0;->h:Ll1/t;

    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method
