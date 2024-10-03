.class public final synthetic Ln/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ln/k1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/k1;

    invoke-direct {v0}, Ln/k1;-><init>()V

    sput-object v0, Ln/k1;->a:Ln/k1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/ModelWriter;->a(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
