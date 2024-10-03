.class public abstract Li6/l1;
.super Li6/i0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/l1$a;
    }
.end annotation


# static fields
.field public static final g:Li6/l1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li6/l1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li6/l1$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Li6/l1;->g:Li6/l1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li6/i0;-><init>()V

    return-void
.end method
