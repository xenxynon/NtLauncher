.class public final synthetic Lcom/android/launcher3/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/util/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/n;

    invoke-direct {v0}, Lcom/android/launcher3/util/n;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/n;->a:Lcom/android/launcher3/util/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/util/FlagOp;->b(I)I

    move-result p0

    return p0
.end method
