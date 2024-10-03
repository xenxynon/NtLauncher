.class public final Lk4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/b$b;
    }
.end annotation


# static fields
.field public static final a:Lk4/b$b;

.field private static final b:Ln5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk4/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk4/b$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lk4/b;->a:Lk4/b$b;

    sget-object v0, Lk4/b$a;->g:Lk4/b$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lk4/b;->b:Ln5/e;

    return-void
.end method

.method public static final synthetic a()Ln5/e;
    .locals 1

    sget-object v0, Lk4/b;->b:Ln5/e;

    return-object v0
.end method
