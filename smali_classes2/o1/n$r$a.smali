.class Lo1/n$r$a;
.super Ll1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/n$r;->a(Ll1/e;Lr1/a;)Ll1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/t<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ll1/t;

.field final synthetic b:Lo1/n$r;


# direct methods
.method constructor <init>(Lo1/n$r;Ll1/t;)V
    .locals 0

    iput-object p1, p0, Lo1/n$r$a;->b:Lo1/n$r;

    iput-object p2, p0, Lo1/n$r$a;->a:Ll1/t;

    invoke-direct {p0}, Ll1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ls1/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/n$r$a;->e(Ls1/a;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Ls1/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lo1/n$r$a;->f(Ls1/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public e(Ls1/a;)Ljava/sql/Timestamp;
    .locals 2

    iget-object p0, p0, Lo1/n$r$a;->a:Ll1/t;

    invoke-virtual {p0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ls1/c;Ljava/sql/Timestamp;)V
    .locals 0

    iget-object p0, p0, Lo1/n$r$a;->a:Ll1/t;

    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method
