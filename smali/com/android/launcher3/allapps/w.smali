.class public final synthetic Lcom/android/launcher3/allapps/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/allapps/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/w;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/w;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/w;->a:Lcom/android/launcher3/allapps/w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getExpectedHeight()I

    move-result p0

    return p0
.end method
