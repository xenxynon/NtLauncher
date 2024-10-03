.class public final Lo2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ln5/e;

.field private static final b:Ln5/e;

.field private static final c:Ln5/e;

.field private static final d:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo2/b$a;->g:Lo2/b$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lo2/b;->a:Ln5/e;

    sget-object v0, Lo2/b$c;->g:Lo2/b$c;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lo2/b;->b:Ln5/e;

    sget-object v0, Lo2/b$d;->g:Lo2/b$d;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lo2/b;->c:Ln5/e;

    sget-object v0, Lo2/b$b;->g:Lo2/b$b;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lo2/b;->d:Ln5/e;

    return-void
.end method

.method public static final a()Li6/m0;
    .locals 1

    sget-object v0, Lo2/b;->d:Ln5/e;

    invoke-interface {v0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/m0;

    return-object v0
.end method

.method public static final b()Li6/m0;
    .locals 1

    sget-object v0, Lo2/b;->b:Ln5/e;

    invoke-interface {v0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/m0;

    return-object v0
.end method

.method public static final c()Li6/m0;
    .locals 1

    sget-object v0, Lo2/b;->c:Ln5/e;

    invoke-interface {v0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/m0;

    return-object v0
.end method
