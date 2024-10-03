.class public final synthetic Ln/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Ln/t3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/t3;

    invoke-direct {v0}, Ln/t3;-><init>()V

    sput-object v0, Ln/t3;->a:Ln/t3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/model/WellbeingModel;->d(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
