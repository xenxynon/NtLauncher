.class Lo1/i$a;
.super Lo1/i$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/i;->b(Ll1/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lr1/a;ZZ)Lo1/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Ll1/t;

.field final synthetic g:Ll1/e;

.field final synthetic h:Lr1/a;

.field final synthetic i:Z

.field final synthetic j:Lo1/i;


# direct methods
.method constructor <init>(Lo1/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLl1/t;Ll1/e;Lr1/a;Z)V
    .locals 0

    iput-object p1, p0, Lo1/i$a;->j:Lo1/i;

    iput-object p5, p0, Lo1/i$a;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lo1/i$a;->e:Z

    iput-object p7, p0, Lo1/i$a;->f:Ll1/t;

    iput-object p8, p0, Lo1/i$a;->g:Ll1/e;

    iput-object p9, p0, Lo1/i$a;->h:Lr1/a;

    iput-boolean p10, p0, Lo1/i$a;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lo1/i$c;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Ls1/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo1/i$a;->f:Ll1/t;

    invoke-virtual {v0, p1}, Ll1/t;->b(Ls1/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lo1/i$a;->i:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lo1/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method b(Ls1/c;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo1/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lo1/i$a;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo1/i$a;->f:Ll1/t;

    goto :goto_0

    :cond_0
    new-instance v0, Lo1/m;

    iget-object v1, p0, Lo1/i$a;->g:Ll1/e;

    iget-object v2, p0, Lo1/i$a;->f:Ll1/t;

    iget-object p0, p0, Lo1/i$a;->h:Lr1/a;

    invoke-virtual {p0}, Lr1/a;->e()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lo1/m;-><init>(Ll1/e;Ll1/t;Ljava/lang/reflect/Type;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Ll1/t;->d(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lo1/i$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lo1/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
