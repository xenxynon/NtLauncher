.class public final Li6/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li6/b1;

.field private static final b:Li6/i0;

.field private static final c:Li6/i0;

.field private static final d:Li6/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/b1;

    invoke-direct {v0}, Li6/b1;-><init>()V

    sput-object v0, Li6/b1;->a:Li6/b1;

    sget-object v0, Lkotlinx/coroutines/scheduling/c;->m:Lkotlinx/coroutines/scheduling/c;

    sput-object v0, Li6/b1;->b:Li6/i0;

    sget-object v0, Li6/v2;->g:Li6/v2;

    sput-object v0, Li6/b1;->c:Li6/i0;

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->h:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Li6/b1;->d:Li6/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Li6/i0;
    .locals 1

    sget-object v0, Li6/b1;->b:Li6/i0;

    return-object v0
.end method

.method public static final b()Li6/i0;
    .locals 1

    sget-object v0, Li6/b1;->d:Li6/i0;

    return-object v0
.end method

.method public static final c()Li6/g2;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/s;->c:Li6/g2;

    return-object v0
.end method
