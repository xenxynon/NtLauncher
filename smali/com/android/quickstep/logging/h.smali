.class public final synthetic Lcom/android/quickstep/logging/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/logging/h;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/logging/h;

    invoke-direct {v0}, Lcom/android/quickstep/logging/h;-><init>()V

    sput-object v0, Lcom/android/quickstep/logging/h;->a:Lcom/android/quickstep/logging/h;

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

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    invoke-virtual {p1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
