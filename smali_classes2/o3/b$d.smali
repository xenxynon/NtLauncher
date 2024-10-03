.class final Lo3/b$d;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/b;->z(Ljava/lang/Boolean;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Landroid/content/pm/Signature;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lo3/b;

.field final synthetic h:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lo3/b;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lo3/b$d;->g:Lo3/b;

    iput-object p2, p0, Lo3/b$d;->h:Ljava/lang/Boolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/Signature;
    .locals 4

    iget-object v0, p0, Lo3/b$d;->g:Lo3/b;

    const-string v1, "com.nothing.icon"

    invoke-static {v0, v1}, Lo3/b;->b(Lo3/b;Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0

    iget-object p0, p0, Lo3/b$d;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NothingIcon was installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "(parameter)"

    goto :goto_0

    :cond_0
    const-string p0, "(query PM)"

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",but didn\'t find the signature"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IconPackManager"

    invoke-static {v1, p0}, Ly3/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo3/b$d;->a()Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method
