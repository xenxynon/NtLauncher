.class final Li6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/j2;


# static fields
.field public static final g:Li6/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/d;

    invoke-direct {v0}, Li6/d;-><init>()V

    sput-object v0, Li6/d;->g:Li6/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Active"

    return-object p0
.end method
