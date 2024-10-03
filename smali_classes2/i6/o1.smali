.class public final Li6/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# static fields
.field public static final g:Li6/o1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/o1;

    invoke-direct {v0}, Li6/o1;-><init>()V

    sput-object v0, Li6/o1;->g:Li6/o1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lq5/g;
    .locals 0

    sget-object p0, Lq5/h;->g:Lq5/h;

    return-object p0
.end method
