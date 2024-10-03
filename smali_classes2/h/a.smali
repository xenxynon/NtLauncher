.class public final synthetic Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lh/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/a;

    invoke-direct {v0}, Lh/a;-><init>()V

    sput-object v0, Lh/a;->a:Lh/a;

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

    check-cast p1, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {p1}, Lcom/android/launcher3/config/FeatureFlags;->b(Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;)Z

    move-result p0

    return p0
.end method
