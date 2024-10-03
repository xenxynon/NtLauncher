.class final Lo3/b$c;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/b;-><init>(Landroid/content/Context;)V
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


# direct methods
.method constructor <init>(Lo3/b;)V
    .locals 0

    iput-object p1, p0, Lo3/b$c;->g:Lo3/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/Signature;
    .locals 2

    iget-object p0, p0, Lo3/b$c;->g:Lo3/b;

    invoke-virtual {p0}, Lo3/b;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appContext.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lo3/b;->b(Lo3/b;Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lo3/b$c;->a()Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method
