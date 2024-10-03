.class public final synthetic Lcom/android/quickstep/o9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/o9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/o9;

    invoke-direct {v0}, Lcom/android/quickstep/o9;-><init>()V

    sput-object v0, Lcom/android/quickstep/o9;->a:Lcom/android/quickstep/o9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    invoke-static {}, Lcom/android/quickstep/ViewUtils;->a()Z

    move-result p0

    return p0
.end method
