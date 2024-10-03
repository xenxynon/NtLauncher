.class public final Ln5/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln5/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln5/t;

    invoke-direct {v0}, Ln5/t;-><init>()V

    sput-object v0, Ln5/t;->a:Ln5/t;

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

    const-string p0, "kotlin.Unit"

    return-object p0
.end method
