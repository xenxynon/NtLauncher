.class public final Li6/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/c1;
.implements Li6/t;


# static fields
.field public static final g:Li6/i2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/i2;

    invoke-direct {v0}, Li6/i2;-><init>()V

    sput-object v0, Li6/i2;->g:Li6/i2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getParent()Li6/v1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
