.class public final synthetic Ln/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Ln/i1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/i1;

    invoke-direct {v0}, Ln/i1;-><init>()V

    sput-object v0, Ln/i1;->a:Ln/i1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
