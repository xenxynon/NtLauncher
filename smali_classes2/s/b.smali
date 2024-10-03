.class public final synthetic Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# static fields
.field public static final synthetic a:Ls/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/b;

    invoke-direct {v0}, Ls/b;-><init>()V

    sput-object v0, Ls/b;->a:Ls/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/search/StringMatcherUtility;->a(I)I

    move-result p0

    return p0
.end method
