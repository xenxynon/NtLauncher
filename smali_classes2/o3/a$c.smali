.class final Lo3/a$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/a;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lo3/a;


# direct methods
.method constructor <init>(Lo3/a;)V
    .locals 0

    iput-object p1, p0, Lo3/a$c;->g:Lo3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 1

    iget-object v0, p0, Lo3/a$c;->g:Lo3/a;

    invoke-static {v0}, Lo3/a;->a(Lo3/a;)I

    move-result v0

    iget-object p0, p0, Lo3/a$c;->g:Lo3/a;

    invoke-static {p0}, Lo3/a;->a(Lo3/a;)I

    move-result p0

    mul-int/2addr v0, p0

    new-array p0, v0, [I

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo3/a$c;->a()[I

    move-result-object p0

    return-object p0
.end method
