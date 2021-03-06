//
// User.m
// Autogenerated by Plank (https://pinterest.github.io/plank/)
//
// DO NOT EDIT - EDITS WILL BE OVERWRITTEN
// @generated
//

#import "Image.h"
#import "User.h"

struct UserDirtyProperties {
    unsigned int UserDirtyPropertyBio:1;
    unsigned int UserDirtyPropertyCounts:1;
    unsigned int UserDirtyPropertyCreatedAt:1;
    unsigned int UserDirtyPropertyEmailFrequency:1;
    unsigned int UserDirtyPropertyFirstName:1;
    unsigned int UserDirtyPropertyIdentifier:1;
    unsigned int UserDirtyPropertyImage:1;
    unsigned int UserDirtyPropertyLastName:1;
    unsigned int UserDirtyPropertyType:1;
    unsigned int UserDirtyPropertyUsername:1;
};

@interface User ()
{
    UserEmailFrequency _emailFrequency;
}
@property (nonatomic, assign, readwrite) struct UserDirtyProperties userDirtyProperties;
@end

@interface UserBuilder ()
@property (nonatomic, assign, readwrite) struct UserDirtyProperties userDirtyProperties;
@end

extern NSString * _Nonnull UserEmailFrequencyToString(UserEmailFrequency enumType)
{
    switch (enumType) {
    case UserEmailFrequencyUnset:
        return @"unset";
        break;
    case UserEmailFrequencyImmediate:
        return @"immediate";
        break;
    case UserEmailFrequencyDaily:
        return @"daily";
        break;
    }
}

extern UserEmailFrequency UserEmailFrequencyFromString(NSString * _Nonnull str)
{
    if ([str isEqualToString:@"unset"]) {
        return UserEmailFrequencyUnset;
    }
    if ([str isEqualToString:@"immediate"]) {
        return UserEmailFrequencyImmediate;
    }
    if ([str isEqualToString:@"daily"]) {
        return UserEmailFrequencyDaily;
    }
    return UserEmailFrequencyUnset;
}

@implementation User
+ (NSString *)className
{
    return @"User";
}
+ (NSString *)polymorphicTypeIdentifier
{
    return @"user";
}
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc] initWithModelDictionary:dictionary];
}
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary error:(NSError *__autoreleasing *)error
{
    return [[self alloc] initWithModelDictionary:dictionary error:error];
}
- (instancetype)init
{
    return [self initWithModelDictionary:@{} error:NULL];
}
- (instancetype)initWithModelDictionary:(NSDictionary *)modelDictionary
{
    return [self initWithModelDictionary:modelDictionary error:NULL];
}
- (instancetype)initWithModelDictionary:(NS_VALID_UNTIL_END_OF_SCOPE NSDictionary *)modelDictionary error:(NSError *__autoreleasing *)error
{
    NSParameterAssert(modelDictionary);
    if (!modelDictionary) {
        return self;
    }
    if (!(self = [super init])) {
        return self;
    }
    {
        __unsafe_unretained id value = modelDictionary[@"bio"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyBio = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_bio = [value copy];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyBio = 0;
                    *error = PlankTypeError(@"bio", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"counts"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyCounts = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSDictionary class]]) {
                    self->_counts = value;
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyCounts = 0;
                    *error = PlankTypeError(@"counts", [NSDictionary class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"created_at"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyCreatedAt = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_createdAt = [[NSValueTransformer valueTransformerForName:kPlankDateValueTransformerKey] transformedValue:value];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyCreatedAt = 0;
                    *error = PlankTypeError(@"created_at", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"email_frequency"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyEmailFrequency = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_emailFrequency = UserEmailFrequencyFromString(value);
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyEmailFrequency = 0;
                    *error = PlankTypeError(@"email_frequency", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"first_name"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyFirstName = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_firstName = [value copy];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyFirstName = 0;
                    *error = PlankTypeError(@"first_name", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"id"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyIdentifier = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_identifier = [value copy];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyIdentifier = 0;
                    *error = PlankTypeError(@"id", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"image"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyImage = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSDictionary class]]) {
                    self->_image = [Image modelObjectWithDictionary:value error:error];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyImage = 0;
                    *error = PlankTypeError(@"image", [NSDictionary class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"last_name"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyLastName = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_lastName = [value copy];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyLastName = 0;
                    *error = PlankTypeError(@"last_name", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"type"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyType = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_type = [value copy];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyType = 0;
                    *error = PlankTypeError(@"type", [NSString class], [value class]);
                }
            }
        }
    }
    {
        __unsafe_unretained id value = modelDictionary[@"username"];
        if (value != nil) {
            self->_userDirtyProperties.UserDirtyPropertyUsername = 1;
            if (value != (id)kCFNull) {
                if (!error || [value isKindOfClass:[NSString class]]) {
                    self->_username = [value copy];
                } else {
                    self->_userDirtyProperties.UserDirtyPropertyUsername = 0;
                    *error = PlankTypeError(@"username", [NSString class], [value class]);
                }
            }
        }
    }
    if ([self class] == [User class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (instancetype)initWithBuilder:(UserBuilder *)builder
{
    NSParameterAssert(builder);
    return [self initWithBuilder:builder initType:PlankModelInitTypeDefault];
}
- (instancetype)initWithBuilder:(UserBuilder *)builder initType:(PlankModelInitType)initType
{
    NSParameterAssert(builder);
    if (!(self = [super init])) {
        return self;
    }
    _bio = builder.bio;
    _counts = builder.counts;
    _createdAt = builder.createdAt;
    _emailFrequency = builder.emailFrequency;
    _firstName = builder.firstName;
    _identifier = builder.identifier;
    _image = builder.image;
    _lastName = builder.lastName;
    _type = builder.type;
    _username = builder.username;
    _userDirtyProperties = builder.userDirtyProperties;
    if ([self class] == [User class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(initType) }];
    }
    return self;
}
#if DEBUG
- (NSString *)debugDescription
{
    NSArray<NSString *> *parentDebugDescription = [[super debugDescription] componentsSeparatedByString:@"\n"];
    NSMutableArray *descriptionFields = [NSMutableArray arrayWithCapacity:10];
    [descriptionFields addObject:parentDebugDescription];
    struct UserDirtyProperties props = _userDirtyProperties;
    if (props.UserDirtyPropertyBio) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_bio = %@", _bio]];
    }
    if (props.UserDirtyPropertyCounts) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_counts = %@", _counts]];
    }
    if (props.UserDirtyPropertyCreatedAt) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_createdAt = %@", _createdAt]];
    }
    if (props.UserDirtyPropertyEmailFrequency) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_emailFrequency = %@", UserEmailFrequencyToString(_emailFrequency)]];
    }
    if (props.UserDirtyPropertyFirstName) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_firstName = %@", _firstName]];
    }
    if (props.UserDirtyPropertyIdentifier) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_identifier = %@", _identifier]];
    }
    if (props.UserDirtyPropertyImage) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_image = %@", _image]];
    }
    if (props.UserDirtyPropertyLastName) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_lastName = %@", _lastName]];
    }
    if (props.UserDirtyPropertyType) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_type = %@", _type]];
    }
    if (props.UserDirtyPropertyUsername) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_username = %@", _username]];
    }
    return [NSString stringWithFormat:@"User = {\n%@\n}", debugDescriptionForFields(descriptionFields)];
}
#endif
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(UserBuilder *builder))block
{
    NSParameterAssert(block);
    UserBuilder *builder = [[UserBuilder alloc] initWithModel:self];
    block(builder);
    return [builder build];
}
- (BOOL)isEqual:(id)anObject
{
    if (self == anObject) {
        return YES;
    }
    if ([anObject isKindOfClass:[User class]] == NO) {
        return NO;
    }
    return [self isEqualToUser:anObject];
}
- (BOOL)isEqualToUser:(User *)anObject
{
    return (
        (anObject != nil) &&
        (_emailFrequency == anObject.emailFrequency) &&
        (_bio == anObject.bio || [_bio isEqualToString:anObject.bio]) &&
        (_counts == anObject.counts || [_counts isEqualToDictionary:anObject.counts]) &&
        (_createdAt == anObject.createdAt || [_createdAt isEqualToDate:anObject.createdAt]) &&
        (_firstName == anObject.firstName || [_firstName isEqualToString:anObject.firstName]) &&
        (_identifier == anObject.identifier || [_identifier isEqualToString:anObject.identifier]) &&
        (_image == anObject.image || [_image isEqual:anObject.image]) &&
        (_lastName == anObject.lastName || [_lastName isEqualToString:anObject.lastName]) &&
        (_type == anObject.type || [_type isEqualToString:anObject.type]) &&
        (_username == anObject.username || [_username isEqualToString:anObject.username])
    );
}
- (NSUInteger)hash
{
    NSUInteger subhashes[] = {
        17,
        [_bio hash],
        [_counts hash],
        [_createdAt hash],
        (NSUInteger)_emailFrequency,
        [_firstName hash],
        [_identifier hash],
        [_image hash],
        [_lastName hash],
        [_type hash],
        [_username hash]
    };
    return PINIntegerArrayHash(subhashes, sizeof(subhashes) / sizeof(subhashes[0]));
}
- (instancetype)mergeWithModel:(User *)modelObject
{
    return [self mergeWithModel:modelObject initType:PlankModelInitTypeFromMerge];
}
- (instancetype)mergeWithModel:(User *)modelObject initType:(PlankModelInitType)initType
{
    NSParameterAssert(modelObject);
    UserBuilder *builder = [[UserBuilder alloc] initWithModel:self];
    [builder mergeWithModel:modelObject];
    return [[User alloc] initWithBuilder:builder initType:initType];
}
- (NSDictionary *)dictionaryObjectRepresentation
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:10];
    if (_userDirtyProperties.UserDirtyPropertyBio) {
        if (_bio != nil) {
            [dict setObject:_bio forKey:@"bio"];
        } else {
            [dict setObject:[NSNull null] forKey:@"bio"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyCounts) {
        if (_counts != nil) {
            [dict setObject:_counts forKey:@"counts"];
        } else {
            [dict setObject:[NSNull null] forKey:@"counts"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyCreatedAt) {
        if (_createdAt != nil) {
            NSValueTransformer *valueTransformer = [NSValueTransformer valueTransformerForName:kPlankDateValueTransformerKey];
            if ([[valueTransformer class] allowsReverseTransformation]) {
                [dict setObject:[valueTransformer reverseTransformedValue:_createdAt] forKey:@"created_at"];
            } else {
                [dict setObject:[NSNull null] forKey:@"created_at"];
            }
        } else {
            [dict setObject:[NSNull null] forKey:@"created_at"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyEmailFrequency) {
        [dict setObject:UserEmailFrequencyToString(_emailFrequency) forKey:@"email_frequency"];
    }
    if (_userDirtyProperties.UserDirtyPropertyFirstName) {
        if (_firstName != nil) {
            [dict setObject:_firstName forKey:@"first_name"];
        } else {
            [dict setObject:[NSNull null] forKey:@"first_name"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyIdentifier) {
        if (_identifier != nil) {
            [dict setObject:_identifier forKey:@"id"];
        } else {
            [dict setObject:[NSNull null] forKey:@"id"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyImage) {
        if (_image != nil) {
            [dict setObject:[_image dictionaryObjectRepresentation] forKey:@"image"];
        } else {
            [dict setObject:[NSNull null] forKey:@"image"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyLastName) {
        if (_lastName != nil) {
            [dict setObject:_lastName forKey:@"last_name"];
        } else {
            [dict setObject:[NSNull null] forKey:@"last_name"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyType) {
        if (_type != nil) {
            [dict setObject:_type forKey:@"type"];
        } else {
            [dict setObject:[NSNull null] forKey:@"type"];
        }
    }
    if (_userDirtyProperties.UserDirtyPropertyUsername) {
        if (_username != nil) {
            [dict setObject:_username forKey:@"username"];
        } else {
            [dict setObject:[NSNull null] forKey:@"username"];
        }
    }
    return dict;
}
- (BOOL)isBioSet
{
    return _userDirtyProperties.UserDirtyPropertyBio == 1;
}
- (BOOL)isCountsSet
{
    return _userDirtyProperties.UserDirtyPropertyCounts == 1;
}
- (BOOL)isCreatedAtSet
{
    return _userDirtyProperties.UserDirtyPropertyCreatedAt == 1;
}
- (BOOL)isEmailFrequencySet
{
    return _userDirtyProperties.UserDirtyPropertyEmailFrequency == 1;
}
- (BOOL)isFirstNameSet
{
    return _userDirtyProperties.UserDirtyPropertyFirstName == 1;
}
- (BOOL)isIdentifierSet
{
    return _userDirtyProperties.UserDirtyPropertyIdentifier == 1;
}
- (BOOL)isImageSet
{
    return _userDirtyProperties.UserDirtyPropertyImage == 1;
}
- (BOOL)isLastNameSet
{
    return _userDirtyProperties.UserDirtyPropertyLastName == 1;
}
- (BOOL)isTypeSet
{
    return _userDirtyProperties.UserDirtyPropertyType == 1;
}
- (BOOL)isUsernameSet
{
    return _userDirtyProperties.UserDirtyPropertyUsername == 1;
}
#pragma mark - NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding
{
    return YES;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (!(self = [super init])) {
        return self;
    }
    _bio = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"bio"];
    _counts = [aDecoder decodeObjectOfClasses:[NSSet setWithArray:@[[NSDictionary class], [NSNumber class]]] forKey:@"counts"];
    _createdAt = [aDecoder decodeObjectOfClass:[NSDate class] forKey:@"created_at"];
    _emailFrequency = (UserEmailFrequency)[aDecoder decodeIntegerForKey:@"email_frequency"];
    _firstName = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"first_name"];
    _identifier = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"id"];
    _image = [aDecoder decodeObjectOfClass:[Image class] forKey:@"image"];
    _lastName = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"last_name"];
    _type = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"type"];
    _username = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"username"];
    _userDirtyProperties.UserDirtyPropertyBio = [aDecoder decodeIntForKey:@"bio_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyCounts = [aDecoder decodeIntForKey:@"counts_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyCreatedAt = [aDecoder decodeIntForKey:@"created_at_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyEmailFrequency = [aDecoder decodeIntForKey:@"email_frequency_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyFirstName = [aDecoder decodeIntForKey:@"first_name_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyIdentifier = [aDecoder decodeIntForKey:@"id_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyImage = [aDecoder decodeIntForKey:@"image_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyLastName = [aDecoder decodeIntForKey:@"last_name_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyType = [aDecoder decodeIntForKey:@"type_dirty_property"] & 0x1;
    _userDirtyProperties.UserDirtyPropertyUsername = [aDecoder decodeIntForKey:@"username_dirty_property"] & 0x1;
    if ([self class] == [User class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.bio forKey:@"bio"];
    [aCoder encodeObject:self.counts forKey:@"counts"];
    [aCoder encodeObject:self.createdAt forKey:@"created_at"];
    [aCoder encodeInteger:self.emailFrequency forKey:@"email_frequency"];
    [aCoder encodeObject:self.firstName forKey:@"first_name"];
    [aCoder encodeObject:self.identifier forKey:@"id"];
    [aCoder encodeObject:self.image forKey:@"image"];
    [aCoder encodeObject:self.lastName forKey:@"last_name"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.username forKey:@"username"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyBio forKey:@"bio_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyCounts forKey:@"counts_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyCreatedAt forKey:@"created_at_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyEmailFrequency forKey:@"email_frequency_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyFirstName forKey:@"first_name_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyIdentifier forKey:@"id_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyImage forKey:@"image_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyLastName forKey:@"last_name_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyType forKey:@"type_dirty_property"];
    [aCoder encodeInt:_userDirtyProperties.UserDirtyPropertyUsername forKey:@"username_dirty_property"];
}
@end

@implementation UserBuilder
- (instancetype)initWithModel:(User *)modelObject
{
    NSParameterAssert(modelObject);
    if (!(self = [super init])) {
        return self;
    }
    struct UserDirtyProperties userDirtyProperties = modelObject.userDirtyProperties;
    if (userDirtyProperties.UserDirtyPropertyBio) {
        _bio = modelObject.bio;
    }
    if (userDirtyProperties.UserDirtyPropertyCounts) {
        _counts = modelObject.counts;
    }
    if (userDirtyProperties.UserDirtyPropertyCreatedAt) {
        _createdAt = modelObject.createdAt;
    }
    if (userDirtyProperties.UserDirtyPropertyEmailFrequency) {
        _emailFrequency = modelObject.emailFrequency;
    }
    if (userDirtyProperties.UserDirtyPropertyFirstName) {
        _firstName = modelObject.firstName;
    }
    if (userDirtyProperties.UserDirtyPropertyIdentifier) {
        _identifier = modelObject.identifier;
    }
    if (userDirtyProperties.UserDirtyPropertyImage) {
        _image = modelObject.image;
    }
    if (userDirtyProperties.UserDirtyPropertyLastName) {
        _lastName = modelObject.lastName;
    }
    if (userDirtyProperties.UserDirtyPropertyType) {
        _type = modelObject.type;
    }
    if (userDirtyProperties.UserDirtyPropertyUsername) {
        _username = modelObject.username;
    }
    _userDirtyProperties = userDirtyProperties;
    return self;
}
- (User *)build
{
    return [[User alloc] initWithBuilder:self];
}
- (void)mergeWithModel:(User *)modelObject
{
    NSParameterAssert(modelObject);
    UserBuilder *builder = self;
    if (modelObject.userDirtyProperties.UserDirtyPropertyBio) {
        builder.bio = modelObject.bio;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyCounts) {
        builder.counts = modelObject.counts;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyCreatedAt) {
        builder.createdAt = modelObject.createdAt;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyEmailFrequency) {
        builder.emailFrequency = modelObject.emailFrequency;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyFirstName) {
        builder.firstName = modelObject.firstName;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyIdentifier) {
        builder.identifier = modelObject.identifier;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyImage) {
        id value = modelObject.image;
        if (value != nil) {
            if (builder.image) {
                builder.image = [builder.image mergeWithModel:value initType:PlankModelInitTypeFromSubmerge];
            } else {
                builder.image = value;
            }
        } else {
            builder.image = nil;
        }
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyLastName) {
        builder.lastName = modelObject.lastName;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyType) {
        builder.type = modelObject.type;
    }
    if (modelObject.userDirtyProperties.UserDirtyPropertyUsername) {
        builder.username = modelObject.username;
    }
}
- (void)setBio:(NSString *)bio
{
    _bio = [bio copy];
    _userDirtyProperties.UserDirtyPropertyBio = 1;
}
- (void)setCounts:(NSDictionary<NSString *, NSNumber /* Integer */ *> *)counts
{
    _counts = counts;
    _userDirtyProperties.UserDirtyPropertyCounts = 1;
}
- (void)setCreatedAt:(NSDate *)createdAt
{
    _createdAt = [createdAt copy];
    _userDirtyProperties.UserDirtyPropertyCreatedAt = 1;
}
- (void)setEmailFrequency:(UserEmailFrequency)emailFrequency
{
    _emailFrequency = emailFrequency;
    _userDirtyProperties.UserDirtyPropertyEmailFrequency = 1;
}
- (void)setFirstName:(NSString *)firstName
{
    _firstName = [firstName copy];
    _userDirtyProperties.UserDirtyPropertyFirstName = 1;
}
- (void)setIdentifier:(NSString *)identifier
{
    _identifier = [identifier copy];
    _userDirtyProperties.UserDirtyPropertyIdentifier = 1;
}
- (void)setImage:(Image *)image
{
    _image = image;
    _userDirtyProperties.UserDirtyPropertyImage = 1;
}
- (void)setLastName:(NSString *)lastName
{
    _lastName = [lastName copy];
    _userDirtyProperties.UserDirtyPropertyLastName = 1;
}
- (void)setType:(NSString *)type
{
    _type = [type copy];
    _userDirtyProperties.UserDirtyPropertyType = 1;
}
- (void)setUsername:(NSString *)username
{
    _username = [username copy];
    _userDirtyProperties.UserDirtyPropertyUsername = 1;
}
@end
