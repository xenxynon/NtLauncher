.class public final synthetic Lcom/android/launcher3/allapps/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/allapps/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/u;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/u;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/u;->a:Lcom/android/launcher3/allapps/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->a()Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method
